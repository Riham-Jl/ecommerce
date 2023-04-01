import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class AddressData {
  Crud crud ;
  AddressData(this.crud);

  //Crud crud =  Crud();

  getData( String userId ) async {
    var response = await crud.postData(AppLink.addressview, { "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }


   addressadd(Map data) async {
    var response = await crud.postData(AppLink.addressadd, data);
    return response.fold((l) => l, (r) => r);
  }

  addressdelete(String addressId  ) async {
    var response = await crud.postData(AppLink.addressdelete, {"address_id": addressId });
    return response.fold((l) => l, (r) => r);
  }

  getCount(String itemId , String userId ) async {
    var response = await crud.postData(AppLink.getitemcount, {"item_id": itemId , "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

  checkcoupon(String coupon ) async {
    var response = await crud.postData(AppLink.coupon, {"coupon": coupon});
    return response.fold((l) => l, (r) => r);
  }
}