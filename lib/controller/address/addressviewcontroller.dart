import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/datasource/remote/addressdata.dart';
import 'package:project_ecommerce/data/model/address.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../core/services/services.dart';

abstract class AddressViewController extends GetxController{
  gotoaddaddress();
  getdata();
  deleteaddress(id);

}
class AddressViewControllerImp extends AddressViewController {

  MyServices myservices = Get.find();
  AddressData addressData = AddressData(Get.find());
  List<AddressModel> data = [];
  StatusRequest? statusrequest;

  

  @override
  getdata() async {
    statusrequest = StatusRequest.loading;
    update();
    var response = await addressData.getData(myservices.sharedpreferences.getString("id").toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        List responsedata = response['data'];
       data.addAll(responsedata.map((e) => AddressModel.fromJson(e)));
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
  deleteaddress( id) async {
    statusrequest = StatusRequest.loading;
    update();
    var response = await addressData.addressdelete(id.toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        data.removeWhere((e) => e.addressId==id);
        Get.rawSnackbar(title: "done" , message: "address deleted successfully");
      }
      else {
        //statusrequest = StatusRequest.failure;
      }
    }
    else {
      
    }
    update();
       

  }


  @override
  gotoaddaddress() {
    Get.toNamed(AppRoute.addressaddmap , arguments: {"root" : "address"});
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }



}