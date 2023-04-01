import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class LoginData {
  Crud crud ;
  LoginData(this.crud);

  //Crud crud =  Crud();

  postData( String email , String password ) async {
    var response = await crud.postData(AppLink.login, {
      "email" : email,
      "password" : password
    });
    return response.fold((l) => l, (r) => r);
  }
}