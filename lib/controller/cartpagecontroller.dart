import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/cartcontroller.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/services/services.dart';
import 'package:project_ecommerce/data/model/cart.dart';
import 'package:project_ecommerce/data/model/coupon.dart';
import '../core/class/statusrequest.dart';
import '../core/functions/handlingdata.dart';
import '../data/datasource/remote/cartdata.dart';

abstract class CartPageCpntroller extends GetxController{
  getdata();
  addtocart (subId ,itemId);
  deletefromcart (subId ,itemId);
  checkcoupon();

}

class CartPageCpntrollerImp extends CartPageCpntroller{

  CartControllerImp cartcontroller = Get.put(CartControllerImp());
  
    MyServices myServices = Get.find();
    CartData cartdata = CartData(Get.find());
    List<CartModel> items =[];
    Map countprice = {};
    int totalcount = 0;
    double price = 0.0;
    StatusRequest? statusrequest;

    TextEditingController? couponcontroller;
    CouponModel? coupon;
    int couponDiscount = 0;
    String couponname = "";
    String couponId = "0";
    double totalpricecart = 0.0;



  @override
  getdata() async {
    items.clear();
    countprice.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await cartdata.getData( myServices.sharedpreferences.getString("id").toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       // print(response['data']);
       List responsedata = response['data'] ;
       items.addAll(responsedata.map((e) => CartModel.fromJson(e)));
       countprice.addAll(response['countprice']);
       totalcount = int.parse(countprice['totalcount']);
       price = double.parse( countprice['totalprice'].toString());
        totalpricecart = price - price*couponDiscount/100;

      

      }
      else {
            statusrequest = StatusRequest.failure;

      }
    }
    else {
      
    }
    update();
    }

  

   @override
  addtocart(subId , itemId) async{
    await cartcontroller.addtocart(subId, itemId);
        items.clear();
    await getdata();
  }
  

  @override
  deletefromcart (subId , itemId) async{
    await cartcontroller.deletefromcart(subId , itemId);
    items.clear();
    await getdata();
    
    
  }



@override
  checkcoupon() async {
    if(couponcontroller!.text!=""){
    statusrequest = StatusRequest.loading;
    update();
    var response = await cartdata.checkcoupon(couponcontroller!.text);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       // print(response['data']);
        Map<String,dynamic> responsedata = response['data'] ;
      coupon = CouponModel.fromJson(responsedata);
      couponDiscount= int.parse(coupon!.coupDiscount.toString());
      couponname = coupon!.coupName.toString();
      couponId= coupon!.coupId.toString();
      totalpricecart = price - price*couponDiscount/100;
      
        }
      else {
        Get.rawSnackbar(title: "wrong code" , message: "try another code");
      }
    }
    else {
      
    }
    couponcontroller!.clear();
    update();
       
        }
  }

  gotocheckout(){
    if(items.isEmpty){
      Get.snackbar("warning".tr , "cart empty".tr);
    }
    else {
      Get.toNamed(AppRoute.checkout , arguments: {"couponid": couponId , "originalPrice" : price , "totalPriceCart" : totalpricecart} );
    }
  }
  
  @override
  void onInit() {
    couponcontroller = TextEditingController();
    getdata();
    super.onInit();
  }


}