import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/bindings/initialbinding.dart';
import 'package:project_ecommerce/core/localization/localecontroller.dart';
import 'package:project_ecommerce/core/localization/translation.dart';
import 'core/services/services.dart';
import 'routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      theme: controller.appTheme,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
