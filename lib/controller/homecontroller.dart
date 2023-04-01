import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/searchcontroller.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/services/services.dart';
import '../core/class/statusrequest.dart';
import '../core/functions/handlingdata.dart';

abstract class HomeController extends SearchController {
  getdata();
  gotoitems(List categories , String catId);

}

class HomeControllerImp extends HomeController{
  MyServices myservices = Get.find();

  List categories = [];
  List items =[];
  String? language;

  

  @override
  getdata() async {
    statusrequest = StatusRequest.loading;
    update();
    var response = await homedata.postData();
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       categories.addAll(response['categories']);
       items.addAll(response['topitems']);
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
  gotoitems(List categories, String catId) {
    Get.toNamed(AppRoute.items , arguments: {"categories" : categories ,  "catId" :catId});
  }

 
goToDetails(item){
    Get.toNamed(AppRoute.itemsdetails , arguments: {"item" : item});
  }

@override
  void onInit() {
    getdata();
    search = TextEditingController();
    language = myservices.sharedpreferences.getString("lang");


    super.onInit();
  }

}

