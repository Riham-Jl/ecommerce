import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class CartData {
  Crud crud ;
  CartData(this.crud);

  //Crud crud =  Crud();

  getData( String userId ) async {
    var response = await crud.postData(AppLink.cartview, { "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }


   addToCart(String subId , String itemId , String userId ) async {
    var response = await crud.postData(AppLink.addtocart, { "sub_item_id" : subId,"item_id": itemId , "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

  deletefromCart(String subId , String itemId , String userId ) async {
    var response = await crud.postData(AppLink.deletefromcart, { "sub_item_id" : subId, "item_id": itemId , "user_id": userId});
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