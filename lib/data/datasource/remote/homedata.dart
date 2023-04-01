import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class HomeData {
  Crud crud ;
  HomeData(this.crud);

  //Crud crud =  Crud();

  postData( ) async {
    var response = await crud.postData(AppLink.home, {});
    return response.fold((l) => l, (r) => r);
  }

   search( String search) async {
    var response = await crud.postData(AppLink.searchitems, {"search" : search});
    return response.fold((l) => l, (r) => r);
  }
}