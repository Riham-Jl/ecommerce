import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class OrderDetailsData {
  Crud crud ;
  OrderDetailsData(this.crud);

  //Crud crud =  Crud();

  getData( String orderId ) async {
    var response = await crud.postData(AppLink.ordersdetails, { "order_id": orderId});
    return response.fold((l) => l, (r) => r);
  }

}