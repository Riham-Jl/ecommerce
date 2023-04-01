import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';

abstract class SuccessAuthController extends GetxController {
  gotologin();

}

class SuccessAuthControllerImp extends SuccessAuthController {

  @override
  gotologin() {
    Get.offAllNamed(AppRoute.login);
  }



}

