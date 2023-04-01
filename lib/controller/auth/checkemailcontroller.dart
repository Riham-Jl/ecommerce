import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/datasource/remote/auth/checkemailldata.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();

}

class CheckEmailControllerImp extends CheckEmailController {
    GlobalKey<FormState> formstate =  GlobalKey<FormState>();
    late TextEditingController email;


      CheckEmailData checkemaildata = CheckEmailData(Get.find());
      StatusRequest? statusrequest;
    


  @override
  checkemail() async {
    var formdata = formstate.currentState;
      if (formdata!.validate()){ 
        statusrequest = StatusRequest.loading;
        update();
       var response = await checkemaildata.postData(email.text);
       statusrequest=handlingData(response);
       if (statusrequest == StatusRequest.success){
          if (response['status']=="success"){
              Get.toNamed(AppRoute.verifycode , arguments: {"task":"forget" , "email":email.text});
             }
      else {
          Get.defaultDialog(
          title: "warning".tr,
          middleText: "Email not found".tr
         // middleText: response['message']
        );
        statusrequest = StatusRequest.failure;
      }
    }
    update();



       }
       else {
       }
  }


@override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
}

