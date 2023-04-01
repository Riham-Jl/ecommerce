import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/itemsdetailscontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import 'package:project_ecommerce/data/model/subitems.dart';

import '../../../core/functions/subitemscolors.dart';

class ItemsDetailsColor extends StatelessWidget {
  final List<SubItemsModel> subitems;
  const ItemsDetailsColor({
    Key? key, required this.subitems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[  
    Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child:  Text("colors".tr ,textAlign: TextAlign.start, style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),)),
    Row(children: [
    ...List.generate(
      subitems.length, 
      (index) => SubColor(i:index , item: subitems[index])
      )],),]);
  }
}

class SubColor extends GetView<ItemsDetailsControllerImp> {
  final int i;
  final SubItemsModel item;
const SubColor({
    Key? key, required this.i, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.chooseSub(i);
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: controller.sub==i ? Border.all(width: 2, color: AppColor.red):null ,
              borderRadius: BorderRadius.circular(10),
              color: subItemsColor("${item.subColor}"),
            ),
            margin: const EdgeInsets.all(8),
          ),
          Text("${item.subColor}" , 
            style: const TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

