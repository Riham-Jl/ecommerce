import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/checkoutcontroller.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/checkout/chooseaddressdetails.dart';
import '../widget/checkout/choosedelivery.dart';
import '../widget/checkout/choosepayment.dart';
import '../widget/checkout/custombottomnavigation.dart';
import '../widget/checkout/customcontainer.dart';


class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckOutControllerImp());
    return GetBuilder<CheckOutControllerImp>(builder: (controller) =>
    Scaffold(
      appBar: AppBar(
        title: Text("check out".tr),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
      body: 
      HandlingDataView(
        statusrequest:controller.statusrequest,
        widget:
       Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const CustomContainer(widget: ChoosePayment()),
            const CustomContainer(widget: ChooseDelivery()),
            
            controller.deliverychoosed? 
            const CustomContainer(widget: ChooseAddressDetails())
            : Container(),
                      ],
        ),
        )
      ),)
    );
  }
}

