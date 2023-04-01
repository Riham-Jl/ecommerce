import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/services/services.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/remote/auth/logindata.dart';

abstract class LoginController extends GetxController {
  login();
  gotoSignup();
  gotocheckemail();
  showhidepassword();

}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate =  GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool hidepassword = true;

  LoginData loginData = LoginData(Get.find());
  List data = [];
  StatusRequest? statusrequest;


  MyServices myservices = Get.find();



  @override
  gotoSignup()  {
   Get.offAllNamed(AppRoute.signup);
    }

    @override
  gotocheckemail() {
    Get.toNamed(AppRoute.checkemail);
  }



  @override
  login() async {
     var formdata = formstate.currentState;
      if (formdata!.validate()){ 
        statusrequest = StatusRequest.loading;
        update();
        var response = await loginData.postData( email.text, password.text);
        statusrequest=handlingData(response);
        if (statusrequest == StatusRequest.success){
        if (response['status']=="success"){
          //data.addAll(response['data']);

          myservices.sharedpreferences.setInt("step", 2);
          myservices.sharedpreferences.setString("email", email.text);
          myservices.sharedpreferences.setString("username", response['data']['users_name']);
          myservices.sharedpreferences.setString("id", "${response['data']['users_id']}");
          FirebaseMessaging.instance.subscribeToTopic("users");
          FirebaseMessaging.instance.subscribeToTopic("users${response['data']['users_id']}");
          myservices.sharedpreferences.setBool("notification" , true);

         Get.offAllNamed(AppRoute.homescreen);
      }
      else {
         statusrequest = StatusRequest.failure;

        if (response['message'] == "verify"){
          Get.defaultDialog(
          title: "warning",
         middleText: "email not verified".tr,
         textConfirm: "ok".tr,
         textCancel: "cancel".tr,
         onConfirm:(){ Get.offNamed(AppRoute.verifycode ,  arguments: {"task":"signup" , "email":email.text}) ;},
         onCancel: (){Get.back();}
         
        );
        }
        else {
          Get.defaultDialog(
          title: "warning",
          middleText: "Email or password is uncorrect"
        );
        }
        
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
    super.onInit();
  }
}