import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdata.dart';
import '../data/datasource/remote/homedata.dart';
import '../data/model/items.dart';

class SearchController extends GetxController{
  HomeData homedata = HomeData(Get.find());
  StatusRequest? statusrequest;

  TextEditingController? search;
  List<ItemsModel> searchlist = [];
  bool isSearch = false;


  searchitems() async {
    if(search!.text.isEmpty){}
    else{
    searchlist.clear();
    isSearch=true;
    statusrequest = StatusRequest.loading;
    update();
    var response = await homedata.search(search!.text);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        List responsedata = response['data'];
       searchlist.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
      }
      else {
        statusrequest = StatusRequest.failure;
      }
    }
    else {
      
    }
    update();
       
    }
  }

  onchangesearch(val){
    if(val==""){
      isSearch=false;
      statusrequest = StatusRequest.none;
      update();
    }
  }

  gotofavorites (){
    Get.toNamed(AppRoute.favorites);
  }

   /*goToDetails(item){
    Get.toNamed(AppRoute.itemsdetails , arguments: {"item" : item});
  }
*/



}