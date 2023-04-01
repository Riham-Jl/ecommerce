import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/successcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../widget/auth/buttonauth.dart';


class SuccessAuth extends StatelessWidget {
  const SuccessAuth({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessAuthControllerImp controller = Get.put(SuccessAuthControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_box_rounded , size: 150, color: AppColor.primaryColor,),
            Container( 
              margin: const EdgeInsets.symmetric(vertical: 20),
              child:  Text ("done".tr , style: Theme.of(context).textTheme.headline1,),),
            ButtonAuth( text: "sign in".tr, 
              onPressed: (){
                controller.gotologin();
              },),
          ],
        ),
      )
    ));
  }
}

