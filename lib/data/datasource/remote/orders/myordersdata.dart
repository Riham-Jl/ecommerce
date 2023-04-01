import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class MyOrdersData {
  Crud crud ;
  MyOrdersData(this.crud);

  //Crud crud =  Crud();

  getData( String userId ) async {
    var response = await crud.postData(AppLink.myorders, { "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

  deleteorder( String orderId ) async {
    var response = await crud.postData(AppLink.deleteorder, { "order_id": orderId});
    return response.fold((l) => l, (r) => r);
  }


}