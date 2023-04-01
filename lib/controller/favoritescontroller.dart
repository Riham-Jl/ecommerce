import 'package:get/get.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/favoritesdata.dart';

class FavoritesController extends GetxController{

    Map isfavorite = {}; 

    FavoritesData favoritesdata = FavoritesData(Get.find());
    MyServices myservices = Get.find();



  setmapfav (id,val){
    isfavorite[id] = val;
    update();
  }

    favoritesadddelete (itemId) {
    if(isfavorite[itemId]=="0"){
        favoritesdata.addToFavorites( itemId , myservices.sharedpreferences.getString("id").toString());
      isfavorite[itemId] = "1";
    }
    else {
      favoritesdata.deletefromFavorites( itemId , myservices.sharedpreferences.getString("id").toString());
        //    Get.rawSnackbar(title: "item deleted from favorites");
        isfavorite[itemId] = "0";
    }
    update();
  }

 
}

