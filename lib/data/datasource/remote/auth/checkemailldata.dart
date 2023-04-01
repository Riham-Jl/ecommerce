import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class CheckEmailData {
  Crud crud ;
  CheckEmailData(this.crud);

  //Crud crud =  Crud();

  postData(  String email ) async {
    var response = await crud.postData(AppLink.checkemail, {
      "email" : email,
    });
    return response.fold((l) => l, (r) => r);
  }
}