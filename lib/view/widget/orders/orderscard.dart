import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import 'package:project_ecommerce/data/model/myorders.dart';
class MyOrdersCard extends StatelessWidget {
  final controller;
  final MyOrdersModel order;
  final void Function()? onPresseddelete;
  final void Function()? onPresseddetails;
  const MyOrdersCard({
    Key? key, required this.order, required this.onPresseddetails , this.onPresseddelete,required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( child: 
         Container(
           padding: const EdgeInsets.all(10),
           child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text( "${"order id".tr} ${order.orderId}" , style: Theme.of(context).textTheme.headline1,),
                   Text("${order.orderStatus}".tr , style: const TextStyle(color: AppColor.red , fontWeight: FontWeight.bold , fontSize: 15),),
                 ],
               ) ,
               const Divider(thickness: 1.1,),
               Text( "${"delivery type".tr} ${controller.deliverytype(order.orederDelivery.toString())}", style: Theme.of(context).textTheme.bodyText1,),
               Text("${"date".tr} ${order.orderDatetime} ", style: Theme.of(context).textTheme.bodyText1),
               Text("payment method".tr + "${order.orderPaymentMethod}".tr, style: Theme.of(context).textTheme.bodyText1),
               const Divider(thickness: 1.1,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( "${"total price".tr} ${order.orderTotalPrice} \$", style: const TextStyle(color: AppColor.red , fontWeight: FontWeight.bold , fontSize: 15),),
                   if (order.orderStatus=="pending") ElevatedButton(
                       onPressed: onPresseddelete,
                       child: Text("delete".tr),
                ),
                ElevatedButton(
                       onPressed: onPresseddetails,
                       child: Text("details".tr),
                ),
                 ],
                ),
                ]
              ),
         ),
    );
  }
}