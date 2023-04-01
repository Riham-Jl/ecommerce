import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/orders/archivedorderscontroller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../widget/orders/orderscard.dart';

class ArchivedOrders extends StatelessWidget {
  const ArchivedOrders({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(ArchivedOrdersControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("archived orders".tr),
      ),
      body: GetBuilder<ArchivedOrdersControllerImp>(builder: (controller) =>
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
                  )
                 ),
            ),
      )
       ));
  }
}