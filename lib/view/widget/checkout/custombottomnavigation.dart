import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/checkoutcontroller.dart';
import '../../../core/constant/color.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutControllerImp>(builder: (controller) => 
    Container(
       margin: const EdgeInsets.symmetric(horizontal: 15), 
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(width: 1 , color: AppColor.red)
          ),
          child: Column(
            children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("price".tr ,  style: const TextStyle(fontSize: 18)),
            Text("${controller.totalpricecart} \$" ,  style: const TextStyle(fontSize: 18))
          ],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("shipping".tr , style: const TextStyle(fontSize: 18),),
            Text("${controller.deliveryprice} \$" , style: const TextStyle(fontSize: 18))
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("total price".tr , style: const TextStyle(color:AppColor.red , fontSize: 20 , fontWeight: FontWeight.bold),),
            Text("${controller.totalpricecheckout}" , style: const TextStyle(color:AppColor.red , fontSize: 20 , fontWeight: FontWeight.bold))
          ],
        ),
            ]
          )),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: AppColor.primaryColor,
            onPressed: (){
                 controller.checkout();  
                       }, 
            child: Text("check out".tr ,  style: const TextStyle(color: Colors.white))),
        )
      ],
    ),
     
    ));
  }
}

