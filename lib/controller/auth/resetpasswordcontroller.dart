import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/auth/resetpassworddata.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingdata.dart';


abstract class ResetPasswordController extends GetxController {
  gotosuccess();
  showhidepassword();
   


}

class ResetPasswordControllerImp extends ResetPasswordController {

         String? email ;

    GlobalKey<FormState> formstate =  GlobalKey<FormState>();
    late TextEditingController password;
    late TextEditingController repassword;
    bool hidepassword = true;

    ResetPasswordData resetpassworddata = ResetPasswordData(Get.find());
      StatusRequest? statusrequest;
    



  @override
  gotosuccess() async {
    
    var formdata = formstate.currentState;
      if (formdata!.validate()){ 
        if (password.text == repassword.text){
        statusrequest = StatusRequest.loading;
        update();
       var response = await resetpassworddata.postdata(email! , password.text);
       statusrequest=handlingData(response);
       if (statusrequest == StatusRequest.success){
          if (response['status']=="success"){
             Get.offAllNamed(AppRoute.success);}
             else {   
              Get.defaultDialog(
              title: "ُwarning".tr, middleText: "try another password".tr);
        statusrequest = StatusRequest.failure;
             }
      
      }
    
    update();
    }

        else {
          Get.defaultDialog(
            title: "warning".tr,
            middleText: "password and repassword".tr
          );
        }
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
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments['email'];  

    super.onInit();
  }
}

