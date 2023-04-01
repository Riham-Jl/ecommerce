import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class VerifyCodeData {
  Crud crud ;
  VerifyCodeData(this.crud);

  //Crud crud =  Crud();

  postData(  String email , String verifycode) async {
    var response = await crud.postData(AppLink.verifycode, {
      "email" : email,
      "verifycode" : verifycode
    });
    return response.fold((l) => l, (r) => r);
  }


resend( String email ) async {
    var response = await crud.postData(AppLink.resendverifycode, {
      "email" : email,
    });
    return response.fold((l) => l, (r) => r);
  }
}