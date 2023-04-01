import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class ArchivedOrdersData {
  Crud crud ;
  ArchivedOrdersData(this.crud);

  //Crud crud =  Crud();

  getData( String userId ) async {
    var response = await crud.postData(AppLink.archivedorders, { "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }




}