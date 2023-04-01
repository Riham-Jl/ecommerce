import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/orders/ordersdetailscontroller.dart';
import 'package:project_ecommerce/core/functions/translatedata.dart';

import 'orderdetailstext.dart';
import 'orderdetailstitle.dart';

class OrderDetailsItemsCard extends GetView<OrdersDetailsControllerImp> {
  const OrderDetailsItemsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Table(
               children: [
                  TableRow (
                   children: [
                     OrderDetailsTitle(text: "item".tr),
                     OrderDetailsTitle(text: "quantity".tr),
                     OrderDetailsTitle(text: "price".tr),
                   ]
                 ),
                ...List.generate(
                 controller.orderdetails.length, (i) { 
                      return TableRow(
                       children: [
                         OrderDetailsText(text: translatedata(controller.orderdetails[i].itName, controller.orderdetails[i].itNameAr)),
                         OrderDetailsText(text: "${controller.orderdetails[i].countItem}" ),
                         OrderDetailsText(text: "${controller.orderdetails[i].priceItem}" ),
                       ]
                      );})
               ],
              ),
              const SizedBox(height: 15,),
              OrderDetailsTitle(text: "${"total price".tr}: ${controller.order!.orderTotalPrice}")
            ],
          ),
        ),
      ),
    );
  }
}



