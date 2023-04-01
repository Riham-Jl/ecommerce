import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class CheckoutData {
  Crud crud ;
  CheckoutData(this.crud);

  //Crud crud =  Crud();

  postData(Map data) async {
    var response = await crud.postData(AppLink.checkout, data);
    return response.fold((l) => l, (r) => r);
  }
}