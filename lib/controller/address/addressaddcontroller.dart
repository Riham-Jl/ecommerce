import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/routes.dart';
import 'package:project_ecommerce/core/services/services.dart';
import 'package:project_ecommerce/data/datasource/remote/addressdata.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';

abstract class AddressAddController extends GetxController{
  getposition();
  getLatandLong();
  gotodetails();
  addAddress();

}

class AddressAddControllerImp extends AddressAddController{
  late Position currentposition;
  LocationPermission? per;
  double? lat;
  double? long;


  late String arg;

  MyServices myServices = Get.find();

  GlobalKey<FormState> formstate =  GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController city;
  late TextEditingController street;
  late TextEditingController building;


@override
  Future getposition () async {
    bool services = await Geolocator.isLocationServiceEnabled();
    //print(services);
    if (services== false) {
      Get.defaultDialog(
        title: "Services Location",
        middleText: "Please turn on your services location",
        onConfirm: () {
          Get.back();
        },
      );
      
  }
       per = await Geolocator.checkPermission();
      if (per == LocationPermission.denied) {
         per = await Geolocator.requestPermission(); 
         
      }
  }
  
  
@override
  getLatandLong() async {
    if (per!= LocationPermission.denied){
     currentposition=  await Geolocator.getCurrentPosition();
     lat = currentposition.latitude;
     long = currentposition.longitude;
     update();

     
  }
  }
  
  /*calculatedistance() async{
      double distancebetween =  Geolocator.distanceBetween(currentposition.latitude, currentposition.longitude, 19.842935, 16.243138);
  }*/

@override
  gotodetails (){
    Get.toNamed(AppRoute.addressadddetails);
  }


  
  AddressData addressData = AddressData(Get.find());
  StatusRequest? statusrequest;



  @override
  addAddress() async {
    var formdata = formstate.currentState;
      if (formdata!.validate()){ 
        
    statusrequest = StatusRequest.loading;
    update();
    Map data = {
      "user_id" : myServices.sharedpreferences.getString("id"),
      "name"    : name.text.toString(),
      "city"    : city.text.toString(),
      "street"  : street.text.toString(),
      "building": building.text.toString(),
      "lat"     : lat.toString(),
      "long"    : long.toString()
    };
    var response = await addressData.addressadd(data);
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        Get.rawSnackbar(title: "done" , message: "address added succesfully");
        arg=="address" ? Get.offAllNamed(AppRoute.addressview) : Get.offAllNamed(AppRoute.cart);
      }
      else {
        statusrequest = StatusRequest.failure;
      }
    }
    else {
      
    }
    update();
       }
       else {
       }
  }

  @override
  void onInit() async {
    arg = Get.arguments["root"];
    await getposition();
    await getLatandLong();

    name = TextEditingController();
    city = TextEditingController();
    street = TextEditingController();
    building = TextEditingController();


    super.onInit();
  }

  }