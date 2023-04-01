import 'package:get/get.dart';
import 'package:project_ecommerce/core/services/services.dart';
import 'package:project_ecommerce/data/model/items.dart';
import '../core/class/statusrequest.dart';
import '../data/datasource/remote/homedata.dart';



class TestController extends GetxController{
  MyServices myservices = Get.find();

  HomeData homedata = HomeData(Get.find());
  List categories = [];
  List items =[];
  List<ItemsModel> itemsmodel = [];
  StatusRequest? statusrequest;

  
/*
  getdata() async {
    statusrequest = StatusRequest.loading;
    update();
    var response = await homedata.postData();
    print(response);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
       categories.addAll(response['categories']);
       items.addAll(response['items']);
       itemsmodel.addAll(items.map((e) => ItemsModel.fromJson(e)));
       print(itemsmodel);
       var x = itemsmodel[0].itDiscountedPrice;
       print(x is int);
       print(x is double);
       print(x is String);
       
       
      }
      else {
        statusrequest = StatusRequest.failure;
      }
    }
    else {
      
    }
    update();
       

  }


  test(){
    String x = "x".toString();
    print(x);
    String z = "5.5";
    var t = 6.6;
    double d = double.parse(z);
  }
 
 


@override
  void onInit() {

    super.onInit();
  }
*/
}

