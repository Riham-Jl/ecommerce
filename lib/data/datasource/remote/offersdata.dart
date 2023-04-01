import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class OffersData {
  Crud crud ;
  OffersData(this.crud);

  //Crud crud =  Crud();

  getData( String userId ) async {
    var response = await crud.postData(AppLink.offers, {"user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

   

 }