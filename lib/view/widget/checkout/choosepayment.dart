import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/view/widget/checkout/customradio.dart';
import 'package:project_ecommerce/view/widget/checkout/customtitle.dart';
import '../../../controller/checkoutcontroller.dart';

class ChoosePayment extends GetView<CheckOutControllerImp> {
  const ChoosePayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutControllerImp>(builder: (controller) => Column(
      children: [
        CustomTitleCheckout(title: "choose payment".tr),
        CustomRadioCheckout(
    title: "cash".tr,
     value: "cash",
     groupvalue: controller.paymentmethod, 
     onchanged: (val){controller.choosepayment(val);}
     ),
        CustomRadioCheckout(
    title: "card".tr, 
    value: "card",
    groupvalue: controller.paymentmethod, 
     onchanged: (val){controller.choosepayment(val);}
    )
      ]
    ));
  }
}

