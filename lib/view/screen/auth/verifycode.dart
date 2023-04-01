import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/style.dart';
import 'package:project_ecommerce/view/widget/auth/buttonauth.dart';
import '../../../controller/auth/verifycodecontroller.dart';
import '../../../core/class/handlingdataviewauth.dart';
import '../../widget/auth/costumtextauth.dart';
import 'package:otp_text_field/otp_text_field.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
 Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("check code".tr), 
      ),
      body: GetBuilder<VerifyCodeControllerImp>(builder: (controller) => 
      HandlingDataViewAuth(
        statusrequest: controller.statusrequest, 
        widget: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
           children: [
          Customtextauth(
              title: "${"check code body".tr} ${controller.email}", 
              bodytext: "" ),        
          OTPTextField(
            controller: controller.otpController,
            length: 5,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 45,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 15,
            style: const TextStyle(fontSize: 17),
            onChanged: (pin) {
              
            },
            onCompleted: (code) {
                controller.checkcode(code);
                 controller.otpController.clear();            },
      ),
      const SizedBox(height: 50,),
      ButtonAuth(
        text: "resend".tr,
        onPressed:(){
          controller.resendcode();
        } ,)
       
                        ],
          ),
        ),
      ),))
    );
  }
}

