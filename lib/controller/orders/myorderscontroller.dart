import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/datasource/remote/orders/myordersdata.dart';
import 'package:project_ecommerce/data/model/myorders.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../core/services/services.dart';

abstract class MyOrdersController extends GetxController{
  getdata();
  gotodetails( MyOrdersModel order);
  deleteorder(String orderId);
  String deliverytype(String delivery);

}

class MyOrdersControllerImp extends MyOrdersController {

  MyServices myServices = Get.find();
    MyOrdersData myordersdata = MyOrdersData(Get.find());
    List<MyOrdersModel> myorders =[];
   
    StatusRequest? statusrequest;

   
  @override
  String deliverytype(delivery) {
    if (delivery=="0" ) {
      return "no delivery".tr;
    }
    else {
      return "yes delivery".tr;
    }
  }


  @override
  getdata() async {
    myorders.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await myordersdata.getData( myServices.sharedpreferences.getString("id").toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       List responsedata = response['data'] ;
       myorders.addAll(responsedata.map((e) => MyOrdersModel.fromJson(e)));
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
  deleteorder(orderId) async {
    statusrequest = StatusRequest.loading;
    update();
    var response = await myordersdata.deleteorder(orderId);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       getdata();
      }
      else {

      }
    }
    else {
      
    }
    update();
    }

  @override
  gotodetails( order){
    Get.toNamed(AppRoute.orderdetails , arguments: {"order":order});
  }

  

  
  @override
  void onInit() {
    getdata();
    super.onInit();
  }


}