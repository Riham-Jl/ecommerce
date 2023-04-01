import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/homecontroller.dart';
import 'package:project_ecommerce/core/functions/translatedata.dart';
import 'package:project_ecommerce/data/model/items.dart';
import '../../../applinks.dart';

class ItemsListHome extends GetView<HomeControllerImp> {
  const ItemsListHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.items.length,
        itemBuilder: ((context, i) {
          ItemsModel item= ItemsModel.fromJson(controller.items[i]);
          return(
            Items(
              item: item,
              onTap: (){
              controller.goToDetails(item);
                },));
        })),
    );
  }
}

class Items extends GetView<HomeControllerImp> {
 final  ItemsModel item;
 final void Function()? onTap;
  const Items({
    Key? key, required this.item, required this.onTap

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
    child: (
      Stack(children: [
        Container(
          height: 140,
            width: 140,
            margin: const EdgeInsets.all(5),
          child:  Image.network("${AppLink.itemsImages}/${item.itImage}" , fit: BoxFit.fill,)),
        
        Container(
          height: 140,
          width: 140,
           margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15))
        ),
        Positioned(
          top: 100,
          left: 30,
          child: Text(translatedata(item.itName, item.itNameAr ) , style: const TextStyle(color: Colors.white),))
      ],)
    ),
          );
  }
}


