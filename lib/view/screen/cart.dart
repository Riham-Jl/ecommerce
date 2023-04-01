import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_ecommerce/controller/cartpagecontroller.dart';

import 'package:project_ecommerce/data/model/cart.dart';

import '../../core/class/handlingdataview.dart';
import '../widget/cart/cartbottomnavigation.dart';
import '../widget/cart/itemcount.dart';
import '../widget/cart/itemscart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(CartPageCpntrollerImp());
    return GetBuilder<CartPageCpntrollerImp>(builder: (controller) =>
     Scaffold(
      bottomNavigationBar: const CartBottomNavigation(),
      appBar: AppBar (
        title: Text("cart".tr),
      ),
      body:
        HandlingDataView(
          statusrequest:controller.statusrequest,
          widget: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const ItemsCount(),
            ...List.generate(
              controller.items.length, (i) {
               CartModel item = controller.items[i];
                return ItemsCard(item: item,);
              })

          ],
        ), ),
    )));
  }
}



