import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/cartpagecontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';

class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({  Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartPageCpntrollerImp>(
      builder: (controller) =>
      Container(
      margin: const EdgeInsets.symmetric(horizontal: 15), 
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          controller.couponname==""? Row(
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: controller.couponcontroller,
                  decoration: InputDecoration(
                    hintText: "coupon code".tr,
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 0)
                  ),
                )),
                const SizedBox(width: 8,),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  height: 45,
                  color: AppColor.primaryColor,
                  onPressed: (){
                    controller.checkcoupon();
                  },
                  child: Text("apply".tr),))
            ],
          ): Center(child: Text(controller.couponname),)
          ,
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(width: 1 , color: Colors.red)
            ),
            child: Column(
              children: [
            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("price".tr ,  style: const TextStyle(fontSize: 18)),
              Text("${controller.price} \$" ,  style: const TextStyle(fontSize: 18))
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("discount".tr , style: const TextStyle(fontSize: 18),),
              Text("${controller.couponDiscount} %" , style: const TextStyle(fontSize: 18))
            ],
          ),

          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("total price".tr , style: const TextStyle(color: AppColor.red , fontSize: 20 , fontWeight: FontWeight.bold),),
              Text("${controller.totalpricecart}" , style: const TextStyle(color: AppColor.red, fontSize: 20 , fontWeight: FontWeight.bold))
            ],
          ),
              ]
            )),
          SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: AppColor.primaryColor,
              onPressed: (){
                controller.gotocheckout();
              }, 
              child: Text("check out".tr ,  style: const TextStyle(color: Colors.white))),
          )
        ],
      ),
    ));
  }
}