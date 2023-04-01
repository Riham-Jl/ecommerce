import 'package:get/get.dart';
import 'package:project_ecommerce/data/model/myorders.dart';
import 'package:project_ecommerce/data/model/orderdetails.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/remote/orders/ordersdetails.dart';

abstract class OrdersDetailsController extends GetxController{
  getdata();

}

class OrdersDetailsControllerImp extends OrdersDetailsController {
    
    StatusRequest? statusrequest;
    OrderDetailsData orderdetailsdata = OrderDetailsData(Get.find());
    List<OrdersDetailsModel> orderdetails =[];
    MyOrdersModel? order;
  

   @override
  getdata() async {
    orderdetails.clear();
    statusrequest = StatusRequest.loading;
    update();
    var response = await orderdetailsdata.getData(order!.orderId.toString());
    statusrequest=handlingData(response);
    if (statusrequest == StatusRequest.success){
      if (response['status']=="success"){
        List responsedata = response['data'];
       orderdetails.addAll(responsedata.map((e) => OrdersDetailsModel.fromJson(e)));
      }
      else {
      
      }
    }
    else {
      
    }
    update();
       

  }


    @override
  void onInit()  {
    order =  Get.arguments['order'];
    getdata();

    super.onInit();
  }

}