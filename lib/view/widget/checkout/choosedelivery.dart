import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/view/widget/checkout/customradio.dart';
import 'package:project_ecommerce/view/widget/checkout/customtitle.dart';
import '../../../controller/checkoutcontroller.dart';

class ChooseDelivery extends GetView<CheckOutControllerImp>{
  const ChooseDelivery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutControllerImp>(builder: (controller) =>Column(
      children: [
        CustomTitleCheckout(title: "choose delivert".tr),
        CustomRadioCheckout(
          title: "delivery".tr, 
          value: "1" ,
           groupvalue: controller.deliverytype, 
           onchanged: (val){controller.choosedelivery(val);}
           ),
        CustomRadioCheckout
        (title: "no delivery".tr,
         value: "0",
         groupvalue: controller.deliverytype, 
          onchanged: (val){controller.choosedelivery(val);}
         ),

      ]
    ));
  }
}



