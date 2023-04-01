import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/localization/localecontroller.dart';

import '../widget/language/buttons.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text ("language".tr , style: Theme.of(context).textTheme.headline1,),
            const SizedBox(height: 15,),
            ButtonsLanguage(title: "English", onpressed: (){
              controller.changeLang("en");
            },),
            ButtonsLanguage(title: "العربية", onpressed: (){
              controller.changeLang("ar");
            },)

          ],) ),
    );
  }
}

