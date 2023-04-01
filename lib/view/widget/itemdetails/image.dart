import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import '../../../applinks.dart';
import '../../../data/model/items.dart';
import '../../../data/model/subitems.dart';

class ItemDetailsImage extends StatelessWidget {
  final ItemsModel item;
  final SubItemsModel subitem;
  const ItemDetailsImage({
    Key? key, required this.item, required this.subitem, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
    height: 180,
    color: AppColor.primaryColor,
      ),
      Positioned(
    top: 100,
    left: 40,
    right: 40,
       child: Hero(
      tag: "${item.itId}", 
      child: CachedNetworkImage(
        height: 180,
        imageUrl: "${AppLink.itemsImages}/${subitem.subImage}", fit: BoxFit.fill,)),
      )
    ],
    );
  }
}






