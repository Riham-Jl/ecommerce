import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/searchcontroller.dart';
import 'package:project_ecommerce/core/services/services.dart';
import 'package:project_ecommerce/data/datasource/remote/itemsdata.dart';
import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdata.dart';
import '../data/model/items.dart';

abstract class ItemsController extends SearchController{
  initialdata();
  changecatid(String id);
  getdata();
  goToDetails(ItemsModel item);

}

class ItemsControllerImp extends ItemsController{

  MyServices myservices = Get.find();

  List categories = [];
  String? catId;


  ItemsData itemsdata = ItemsData(Get.find());
  List items =[];


  @override
  initialdata(){
    categories = Get.arguments["categories"];
    catId = Get.arguments["catId"];
  }

  @override
  changecatid(String id) {
    catId = id;
    getdata();
    update();
  }

  @override
  getdata() async {
    items.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await itemsdata.getData(catId! , myservices.sharedpreferences.getString("id").toString());
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
    initialdata();
    search = TextEditingController();
    getdata();
   super.onInit();

}
}