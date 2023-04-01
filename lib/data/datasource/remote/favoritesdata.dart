import 'package:project_ecommerce/applinks.dart';
import 'package:project_ecommerce/core/class/crud.dart';

class FavoritesData {
  Crud crud ;
  FavoritesData(this.crud);

  //Crud crud =  Crud();

  getData( String userId ) async {
    var response = await crud.postData(AppLink.favoritesview, { "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }


   addToFavorites(String itemId , String userId ) async {
    var response = await crud.postData(AppLink.addtofavorites, {"item_id": itemId , "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }

  deletefromFavorites(String itemId , String userId ) async {
    var response = await crud.postData(AppLink.deletefromfavorites, {"item_id": itemId , "user_id": userId});
    return response.fold((l) => l, (r) => r);
  }
}