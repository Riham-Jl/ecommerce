import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/cartcontroller.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/model/items.dart';
import 'package:project_ecommerce/data/model/subitems.dart';
import 'package:rating_dialog/rating_dialog.dart';
import '../core/class/statusrequest.dart';
import '../core/functions/handlingdata.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/itemsdata.dart';

abstract class ItemsDetailsController extends GetxController{
  initialdata();
  addtocart( subId);
  deletefromcart( subId);
  gotocart();
  getdata();
  showRateDialog(itemid);

}

class ItemsDetailsControllerImp extends ItemsDetailsController{

    MyServices myservices = Get.find();

  CartControllerImp cartcontroller = Get.put(CartControllerImp());
  late ItemsModel item;
   int itemcount = 0;
    StatusRequest? statusRequest;

    
  ItemsData itemsdata = ItemsData(Get.find());
  List<SubItemsModel> subitem =[];
  StatusRequest statusrequest = StatusRequest.loading;
  int sub = 0;


  @override
  initialdata() async{
    item = Get.arguments['item'];
    await getdata();
    await getitemcount();
     update();
  }

  getitemcount() async{
    itemcount = await cartcontroller.getcount(subitem[sub].subId);
  }

  chooseSub(int index)async{
    sub = index;
    await getitemcount();
    update();
  }

   @override
  getdata() async {
    subitem.clear();
    //statusrequest = StatusRequest.loading;
    //update();
    var response = await itemsdata.getDetails(item.itId.toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        List responsedata = response['data'];
       subitem.addAll(responsedata.map((e) => SubItemsModel.fromJson(e)));
      }
      else {
      
      }
    }
    else {
      
    }
    update();
       

  }

  @override
  addtocart(subId) async{
    var response =await  cartcontroller.addtocart(subId , item.itId);
    
      if (response==1){
      itemcount++;
      update();
      }
      else {
       
        }
       // statusrequest = StatusRequest.failure;
      }
    

  

  @override
  deletefromcart (subId){
    if(itemcount!=0){
    cartcontroller.deletefromcart(subId, item.itId);
    itemcount--;
    update();
    }
  }


  
  @override
  gotocart() {
    Get.offNamed(AppRoute.cart);
    }

  @override
  showRateDialog(itemid) {
    showDialog(
      context: Get.context!,
      barrierDismissible: true, // set to false if you want to force a rating
      builder: (context) => RatingDialog(
      initialRating: 1.0,
      title:  Text(
        "rating".tr,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
     
      submitButtonText: 'submit'.tr,
      commentHint: 'add your comment here'.tr,
      onCancelled: () {},
      onSubmitted: (response ) async {
        await itemsdata.addRating(
           itemid ,
           myservices.sharedpreferences.getString("id").toString() ,
           response.rating.toString() ,
           response.comment );      
      },
    ),
    );}


    @override
  void onInit() {
    initialdata();

    super.onInit();
  }
}