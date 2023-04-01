import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/itemsdetailscontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/itemdetails/colors.dart';
import '../widget/itemdetails/countandprice.dart';
import '../widget/itemdetails/descreption.dart';
import '../widget/itemdetails/image.dart';
import '../widget/itemdetails/title.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
     ItemsDetailsControllerImp controller = Get.put(ItemsDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
          onPressed: (){
            controller.gotocart();
          },
          child:  Text("go to cart".tr),
        ),
      ),
      body: GetBuilder<ItemsDetailsControllerImp>(builder: (controller) =>
        HandlingDataView(statusrequest: controller.statusRequest, 
        widget:  ListView(
        children: controller.subitem.isEmpty?[] 
        :[
        ItemDetailsImage(item: controller.item , subitem:controller.subitem[controller.sub] ),
        const SizedBox(height: 100,),
        ItemsDetailsTitle(subitem: controller.subitem[controller.sub]),
        ItemsDetailsCountPrice(
        onpressedAdd: (){controller.addtocart(controller.subitem[controller.sub].subId);},
        onpressedDelete: (){controller.deletefromcart(controller.subitem[controller.sub].subId);},
        itemcount: controller.itemcount,
        subitem: controller.subitem[controller.sub]
        ),
        ItemsDetailsColor(subitems: controller.subitem),
        ItemsDetailsDescreption(item: controller.item),
        RatingButton(onPressed: (){
          controller.showRateDialog(controller.item.itId);
        },),
        
        ],
      ),
    )));
  }
}

class RatingButton extends StatelessWidget {
  final void Function()? onPressed;
  const RatingButton({
    Key? key, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.symmetric(horizontal: 120),
     child: MaterialButton(
       color: AppColor.red,
       onPressed: onPressed,
        child:  Text("rate this product".tr , style: const TextStyle(color: AppColor.white),)),
    );
  }
}

