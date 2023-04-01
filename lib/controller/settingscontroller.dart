import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/services/services.dart';

abstract class SettingsController extends GetxController{
  changenotification(value);
  gotoaddress();
  gotomyorders();
  gotolanguage();
  logout();

}

class SettingsControllerImp extends SettingsController{

  MyServices myservices = Get.find();

  bool? notification;
  


  @override
  changenotification(value){
    notification = value;
    myservices.sharedpreferences.setBool("notification" , value);
    if(value){
      FirebaseMessaging.instance.subscribeToTopic("users");
    }
    else {
      FirebaseMessaging.instance.unsubscribeFromTopic("users");
    }
    update();
  }

  @override
  gotoaddress() {
    Get.toNamed(AppRoute.addressview);
  }

  @override
  gotomyorders() {
    Get.toNamed(AppRoute.myorders);
  }

  @override
  gotolanguage() {
    Get.toNamed(AppRoute.language);
  }
  @override
  logout() {
    String userid = myservices.sharedpreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic("users$userid");
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
          myservices.sharedpreferences.setString("email", "null");
          myservices.sharedpreferences.setString("username", "null");
          myservices.sharedpreferences.setString("id", "null");
          myservices.sharedpreferences.setInt("step", 1);
              myservices.sharedpreferences.setBool("notification" , false);

          Get.offAllNamed(AppRoute.login);
  }


  @override
  void onInit() {
    notification = myservices.sharedpreferences.getBool("notification");
    super.onInit();
  }

}