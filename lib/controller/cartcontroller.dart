import 'package:get/get.dart';
import 'package:project_ecommerce/core/class/statusrequest.dart';
import 'package:project_ecommerce/data/datasource/remote/cartdata.dart';

import '../core/functions/handlingdata.dart';
import '../core/services/services.dart';

abstract class CartController extends GetxController{
  addtocart(subId , itemId);
  deletefromcart(subId , itemId);
  getcount (subId);

}

class CartControllerImp extends CartController{

    CartData cartdata = CartData(Get.find());
    MyServices myservices = Get.find();

    StatusRequest? statusrequest ;




    @override
      addtocart(subId,itemId) async{
        var response = await cartdata.addToCart(subId.toString(), itemId.toString() , myservices.sharedpreferences.getString("id").toString());
        statusrequest=handlingData(response);
       if (statusrequest == StatusRequest.success){
        if(response['message']=="count"){
          Get.rawSnackbar(title: "sorry" , message: "out of stock");
          return 0;
        }
        else {
       return 1;
      }
    }
    }

    @override
      deletefromcart(subId , itemId) async{
       await cartdata.deletefromCart(subId.toString(), itemId.toString() , myservices.sharedpreferences.getString("id").toString());
       
    }

    @override
      getcount (subId) async{
      int count = 0;
      var response = await cartdata.getCount(subId.toString(), myservices.sharedpreferences.getString("id").toString());
      if (response['status']=="success"){
        count = int.parse(response['data']);
      }
      return count;
    }




   
}