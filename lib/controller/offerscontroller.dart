import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/searchcontroller.dart';
import 'package:project_ecommerce/core/services/services.dart';
import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdata.dart';
import '../data/datasource/remote/offersdata.dart';
import '../data/model/items.dart';

abstract class OffersController extends SearchController{
  getdata();
  goToDetails(ItemsModel item);

}

class OffersControllerImp extends OffersController{

  MyServices myservices = Get.find();

  OffersData offersdata = OffersData(Get.find());
  List items =[];



  @override
  getdata() async {
    items.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await offersdata.getData( myservices.sharedpreferences.getString("id").toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       items.addAll(response['data']);
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
  goToDetails(item){
    Get.toNamed(AppRoute.itemsdetails , arguments: {"item" : item});
  }

   

    
  

@override
  void onInit() {
        getdata();
    search = TextEditingController();
        super.onInit();

}
}