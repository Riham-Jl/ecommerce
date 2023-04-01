import 'package:get/get.dart';
import 'package:project_ecommerce/controller/favoritescontroller.dart';
import 'package:project_ecommerce/data/datasource/remote/favoritesdata.dart';
import 'package:project_ecommerce/data/model/favoritesmodel.dart';
import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdata.dart';
import '../core/services/services.dart';

abstract class FavoritesPageController extends GetxController {
  getdata();
  deletefromfavorites (String favid,String itemId);
  goToDetails(item);

}
class FavoritesPageControllerImp extends FavoritesPageController {
  FavoritesController favcontroller = Get.put(FavoritesController());
  MyServices myservices = Get.find();



  FavoritesData favoritesdata = FavoritesData(Get.find());
  List<FavoritesModel> items =[];
  StatusRequest? statusrequest;




  @override
  getdata() async {
    items.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await favoritesdata.getData( myservices.sharedpreferences.getString("id").toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        List responsedata = response['data'];
        items.addAll(responsedata.map((e) => FavoritesModel.fromJson(e)));
      }
      else {
        statusrequest = StatusRequest.failure;
      }
    }
    else {
      
    }
    update();
      
 }

@override
 deletefromfavorites (favid,itemId){
     favoritesdata.deletefromFavorites( itemId.toString() , myservices.sharedpreferences.getString("id").toString());
        //    Get.rawSnackbar(title: "item deleted from favorites");
        items.removeWhere((element) => element.favId==favid); 
        favcontroller.setmapfav(itemId, "0");

    update();
  }


  @override
  goToDetails(item){
    Get.toNamed(AppRoute.itemsdetails , arguments: {"item" : item});
  }


  

  

@override
  void onInit() {
        getdata();

    super.onInit();
}

}
