import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/class/statusrequest.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/functions/handlingdata.dart';
import 'package:project_ecommerce/data/datasource/remote/auth/signupdata.dart';

abstract class SignUpController extends GetxController {
  signup();
  gotologin();
  showhidepassword();

}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate =  GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  bool hidepassword = true;


  SignUpData signupData = SignUpData(Get.find());
  List data = [];
  StatusRequest? statusrequest;

  @override
  gotologin() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  signup() async {
    var formdata = formstate.currentState;
      if (formdata!.validate()){ 
        
    statusrequest = StatusRequest.loading;
    update();
    var response = await signupData.postData(username.text, password.text, email.text, phone.text);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        Get.toNamed(AppRoute.verifycode , arguments: {"task":"signup" , "email":email.text});
      }
      else {
        Get.defaultDialog(
          title: "warning",
          middleText: "Email or phone number is already exists"
          //middleText: response['message']
        );
        statusrequest = StatusRequest.failure;
      }
    }
    else {
      Get.defaultDialog(
        title:
         statusrequest==StatusRequest.offlinefailure 
        ? "no Internet connection" 
        : "server not found" ,
        middleText: "Try again later"
      );
    }
    update();
       }
       else {
       }
  }

    @override
  showhidepassword(){
    hidepassword = hidepassword==true? false : true ;
    update();
  }


@override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
     username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }
}