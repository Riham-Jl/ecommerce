import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/view/widget/checkout/customradio.dart';
import 'package:project_ecommerce/view/widget/checkout/customtitle.dart';
import '../../../controller/checkoutcontroller.dart';

class ChooseAddressDetails extends GetView<CheckOutControllerImp> {
  const ChooseAddressDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutControllerImp>(builder: (controller) => Column(
        children:[
          CustomTitleCheckout(title: "choose address".tr),
           ...List.generate(
          controller.addresslist.length,
           (i) => CustomRadioCheckout(
    title: "${controller.addresslist[i].addressName}",
    subtitle: "${controller.addresslist[i].addressStreet} , ${controller.addresslist[i].addressBuilding}",
     value: "${controller.addresslist[i].addressId}", 
     groupvalue: controller.addressid,
      onchanged: (val){
        controller.chooseaddresstype(val);
      }) ),
      
           ] ));
  }
}

