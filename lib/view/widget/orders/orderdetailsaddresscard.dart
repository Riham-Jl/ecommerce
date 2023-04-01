import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/orders/ordersdetailscontroller.dart';

import 'orderdetailstext.dart';
import 'orderdetailstitle.dart';
class OrderDetailsAddressCard extends GetView<OrdersDetailsControllerImp> {
  const OrderDetailsAddressCard({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
       child: Padding(
         padding: const EdgeInsets.all(12),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             OrderDetailsTitle(text: "shipping address".tr),
             OrderDetailsText(text: "${controller.order!.addressCity} , ${controller.order!.addressStreet} , ${controller.order!.addressBuilding}")
           ]),
       ) ,
      ));
  }
}