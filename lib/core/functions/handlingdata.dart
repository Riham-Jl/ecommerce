import 'package:project_ecommerce/core/class/statusrequest.dart';

handlingData (response){
  if (response is StatusRequest){
    return response;
  }
  else {
    return StatusRequest.success;
  }
}