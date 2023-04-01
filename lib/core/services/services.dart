import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedpreferences;

  Future<MyServices> init() async {
    //await Firebase.initializeApp();
    sharedpreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialservices () async{
  await Get.putAsync(() => MyServices().init());
}