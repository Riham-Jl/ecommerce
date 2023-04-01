import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/model/myorders.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/orders/archiedordersdata.dart';

abstract class ArchivedOrdersController extends GetxController{
  getdata();
  gotodetails( MyOrdersModel order);
  String deliverytype(String delivery);

}

class ArchivedOrdersControllerImp extends ArchivedOrdersController {

  MyServices myServices = Get.find();
    ArchivedOrdersData archivedordersdata = ArchivedOrdersData(Get.find());
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
    var response = await archivedordersdata.getData( myServices.sharedpreferences.getString("id").toString());
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
  gotodetails( order){
    Get.toNamed(AppRoute.orderdetails , arguments: {"order":order});
  }

  

  
  @override
  void onInit() {
    getdata();
    super.onInit();
  }


}