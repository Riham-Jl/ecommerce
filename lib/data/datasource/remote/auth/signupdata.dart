import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class SignUpData {
  Crud crud ;
  SignUpData(this.crud);

  //Crud crud =  Crud();

  postData( String username , String password , String email , String phone) async {
    var response = await crud.postData(AppLink.signup, {
      "username" : username,
      "password" : password,
      "email" : email,
      "phone" : phone
    });
    return response.fold((l) => l, (r) => r);
  }
}