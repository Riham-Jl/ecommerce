import 'package:get/get.dart';
import 'package:project_ecommerce/core/services/services.dart';

MyServices myServices = Get.find();
translatedata(dataEn , dataAr){
  if (myServices.sharedpreferences.getString("lang") == "en"){
    return dataEn;
  }
  else {
    return dataAr;
  }

}