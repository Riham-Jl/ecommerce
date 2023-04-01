import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class ItemsData {
  Crud crud ;
  ItemsData(this.crud);

  //Crud crud =  Crud();

  getData(String catId , String userId ) async {
    var response = await crud.postData(AppLink.items, {"cat_id": catId , "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

    getDetails(String itemId ) async {
    var response = await crud.postData(AppLink.itemdetails, {"item_id": itemId});
    return response.fold((l) => l, (r) => r);
  }

  addRating(String itemId , String userId , String rate , String comment ) async {
    var response = await crud.postData(AppLink.rating, 
    {"item_id": itemId , "user_id" : userId , "rate" : rate , "comment" : comment});
    return response.fold((l) => l, (r) => r);
  }

 }