import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/orders/myorderscontroller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../widget/orders/orderscard.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(MyOrdersControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("my orders".tr),
      ),
      body: GetBuilder<MyOrdersControllerImp>(builder: (controller) =>
       HandlingDataView(
          statusrequest: controller.statusrequest,
      widget:
            Container(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: controller.myorders.length,
                itemBuilder:  (context, i) =>
                 MyOrdersCard(
                  controller: controller,
                  order: controller.myorders[i],
                  onPresseddetails: (){
                    controller.gotodetails( controller.myorders[i]);
                  },
                   onPresseddelete: (){
                    controller.deleteorder( controller.myorders[i].orderId.toString());
                  },
                  )
                 ),
            ),
      )
       ));
  }
}