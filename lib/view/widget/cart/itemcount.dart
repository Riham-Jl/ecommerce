import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/color.dart';

import '../../../controller/cartpagecontroller.dart';

class ItemsCount extends GetView<CartPageCpntrollerImp> {
  const ItemsCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: (
        BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColor.red)
        )),
        child: Text("${"cart items count1".tr}${controller.totalcount}${"cart items count2".tr}" , style: Theme.of(context).textTheme.button ));
  }
}

