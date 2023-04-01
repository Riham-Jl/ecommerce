import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/auth/logincontroller.dart';
import 'package:project_ecommerce/core/constant/imageasset.dart';
import 'package:project_ecommerce/core/functions/alertexitapp.dart';
import 'package:project_ecommerce/core/functions/validinput.dart';
import '../../../core/class/handlingdataviewauth.dart';
import '../../widget/auth/buttonauth.dart';
import '../../widget/auth/costumtextauth.dart';
import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/forgetpasswordbutton.dart';
import '../../widget/auth/gotosignuporin.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("sign in".tr),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(builder: (controller) =>
        HandlingDataViewAuth(
          statusrequest: controller.statusrequest,
          widget: SingleChildScrollView(
           child: Container(
          margin: const EdgeInsets.all(30),
          child: Form(
            key: controller.formstate,
            child: Column(
             children: [
              Image.asset(AppImageAsset.logo , height: 180,),           
               Customtextauth(
                title: "welcome".tr, 
                bodytext: "sign in body".tr ),  
              Customtextformauth(
                  controller: controller.email ,
                   hinttext: "email field".tr,
                    labeltext: "email".tr,
                     icon: Icons.email_outlined,
                     isemail: true,
                     validator: (val){ return validInput(val!, 5, 50, "email");},),
              GetBuilder<LoginControllerImp>(builder: (controller) =>
              Customtextformauth(
                  controller: controller.password ,
                   hinttext: "password field".tr,
                    labeltext: "password".tr,
                     icon: Icons.security_outlined,
                     ispassword: controller.hidepassword,
                     onTapIcon:(){ controller.showhidepassword();},
                     validator: (val){return validInput(val!, 5, 15, "password");})),
              Forgetpasseordbutton(ontap:(){ controller.gotocheckemail();},),
              ButtonAuth( text: "sign in".tr, onPressed: (){
                controller.login();
              },),
              GoToSignupOrIn( textone: "no account".tr, texttwo: "sign up".tr , ontap:(){ controller.gotoSignup();})
          
              ],
            ),
          ),
        ),
      ),))
      )
    );
  }
}

