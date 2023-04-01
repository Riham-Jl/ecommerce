import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/data/datasource/remote/auth/verifycodedata.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';

abstract class VerifyCodeController extends GetxController {
  checkcode(String code);
  resendcode();

}

class VerifyCodeControllerImp extends VerifyCodeController {
       String? task ;
       String? email ;

      late OtpFieldController otpController;
  
      VerifyCodeData verifycodedata = VerifyCodeData(Get.find());
      StatusRequest? statusrequest;



  @override
  checkcode(code) async {
    statusrequest = StatusRequest.loading;
    update();
    var response = await verifycodedata.postData( email!, code);
    statusrequest=handlingData(response);
        if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){

         if(task=="forget"){
           Get.offAllNamed(AppRoute.resetpassword , arguments: {"email": email});
            //Get.offAll(() => const ResetPassword());
           }
         else {
           Get.offAllNamed(AppRoute.success);
           }      
             }
      else {
          Get.defaultDialog(
          title: "warning".tr,
          middleText: "verifycode not Correct".tr
         // middleText: response['message']
        );
              statusrequest = StatusRequest.failure;
              update();
      }
    }
    


    
  }

   @override
  resendcode() async {
    var response = await verifycodedata.resend( email!);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       Get.rawSnackbar(title: "Resend" , message: "verifycode was resend successfully");       
             }
      else {
       Get.rawSnackbar(title: "Resend" , message: "please try again");       

              statusrequest = StatusRequest.failure;
      }
    }


    
  }

  @override
  void onInit() {
       otpController = OtpFieldController();
        email = Get.arguments['email'];  
        task  =  Get.arguments['task'];
          super.onInit();
  }



}

