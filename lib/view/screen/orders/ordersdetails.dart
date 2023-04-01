import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/orders/ordersdetailscontroller.dart';
import 'package:project_ecommerce/view/widget/orders/orderdetailsitemscard.dart';
import 'package:project_ecommerce/view/widget/orders/orderdetailsaddresscard.dart';
import '../../../core/class/handlingdataview.dart';

class OrdersDetails extends StatelessWidget {
  const OrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(OrdersDetailsControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("order deatils".tr),
      ),
      body:
       GetBuilder<OrdersDetailsControllerImp>(builder: (controller) => HandlingDataView(
          statusrequest: controller.statusrequest,
      widget:
        Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:  [
           const OrderDetailsItemsCard(),
           if (controller.order!.orederDelivery=="1") const OrderDetailsAddressCard()
          ],
        ),
      ),
    )));
  }
}



