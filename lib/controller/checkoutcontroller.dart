import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:project_ecommerce/core/constant/color.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/datasource/remote/checkout.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingdata.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/addressdata.dart';
import '../data/model/address.dart';

abstract class CheckOutController extends GetxController {
  choosepayment(val);
  choosedelivery(val);
  chooseaddresstype(val);
  getaddressdata();
  checkout();

}

class CheckOutControllerImp extends CheckOutController {
  String? couponId;
  String? originalprice;

  String? paymentmethod;
  String? deliverytype;
  String? addressid;
  bool deliverychoosed = false;
  int deliveryprice = 0 ;
  double totalpricecart = 0.0;
  double totalpricecheckout = 0.0;

  MyServices myservices = Get.find();
  AddressData addressData = AddressData(Get.find());
  CheckoutData checkoutData = CheckoutData(Get.find());

  List<AddressModel> addresslist = [];
  StatusRequest? statusrequest;




  @override
  choosepayment(val){
    paymentmethod = val;
    update();
  }

  @override
  choosedelivery(val) async{
    deliverytype = val;
    if(deliverytype=="1"){
      await getaddressdata();
      deliverychoosed = true;

    }
    else if(deliverytype=="0"){
      deliverychoosed=false;
      deliveryprice = 0;
      totalpricecheckout = totalpricecart;
      addressid=null;
          }
    update();
  }

  @override
  chooseaddresstype(val){
    totalpricecheckout = totalpricecart;
    addressid = val;
    AddressModel choosenaddress = addresslist.firstWhere((e) => e.addressId==val);
    double lat = double.parse(choosenaddress.addressLat!);
    double long =double.parse( choosenaddress.addressLong!);
    double distancebetween =  Geolocator.distanceBetween( 33.504403, 36.260326 , lat, long)/1000;
    deliveryprice = (distancebetween*2).round();
    totalpricecheckout += deliveryprice;
    update();
  }

    


 

  @override
  getaddressdata() async {
    addresslist.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await addressData.getData(myservices.sharedpreferences.getString("id").toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        List responsedata = response['data'];
       addresslist.addAll(responsedata.map((e) => AddressModel.fromJson(e)));

      }
      else {
        Get.defaultDialog(
          title:  "no address title".tr,
          middleText: "no address body".tr,
          //onCancel:(){ Get.back();},
          onConfirm: (){Get.toNamed(AppRoute.addressaddmap , arguments: {"root" : "checkout"});}
        );
      }
    }
    else {
      
    }
    update();
    

  }

  @override
  checkout() async{
    if((deliverychoosed==false && paymentmethod!=null && deliverytype!=null) ||
     (deliverychoosed==true && paymentmethod!=null && deliverytype!=null && addressid!=null) ){
       Map data ={
          "user_id" : myservices.sharedpreferences.getString("id").toString(),
          "payment_method" : paymentmethod.toString(),
          "delivery" : deliverytype.toString(),
          "address_id" : addressid!=null? addressid.toString() : "0",
          "delivery_price" : deliveryprice.toString(),
          "coupon_id" : couponId.toString(),
          "order_price" : originalprice.toString()
        };
          
    statusrequest = StatusRequest.loading;
    update();
    var response = await checkoutData.postData(data);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        Get.offAllNamed(AppRoute.homescreen);
        Get.defaultDialog(
          title: "done".tr ,
        middleText: "order waiting".tr,
        onConfirm: () =>  Get.back()
        );

      }
      else {
        String textmessage;
        if(response['message']=="coupon")
        { textmessage = "sorry, coupon was expired";}
        else if(response['message']=="price"){
          textmessage = "sorry, the price of an item was changed, please refresh and try again";
        }
        else { textmessage = "sorry, please try again";}
        Get.defaultDialog(
          title: "error",
          middleText: textmessage ,
          onConfirm: () => Get.offAllNamed(AppRoute.cart)
        );
      //  statusrequest = StatusRequest.failure;
      }
    }
    else {
      
    }
    update();
     }
     else {
      Get.snackbar("","",titleText:Text("warning".tr ,style: const TextStyle(fontWeight: FontWeight.bold),) ,messageText:Text( "warning checkout".tr) , backgroundColor: AppColor.white);
     }
  }




  @override
  void onInit() {
   couponId = Get.arguments['couponid'];
    originalprice = Get.arguments['originalPrice'].toString();
    totalpricecart = Get.arguments['totalPriceCart'];
    totalpricecheckout = totalpricecart;
    super.onInit();
  }

}
