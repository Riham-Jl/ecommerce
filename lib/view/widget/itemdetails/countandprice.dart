import 'package:flutter/material.dart';
import '../../../data/model/subitems.dart';

class ItemsDetailsCountPrice extends StatelessWidget {
  final void Function()? onpressedAdd;
  final void Function()? onpressedDelete;
  final SubItemsModel subitem;
  final int itemcount;
  const ItemsDetailsCountPrice({
    Key? key, this.onpressedAdd, this.onpressedDelete, required this.itemcount, required this.subitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
      children: [
        IconButton(
          onPressed: onpressedAdd,
         icon: const Icon(Icons.add)),
          Text("$itemcount" , style: const TextStyle(fontSize: 18),),
          IconButton(
            onPressed: onpressedDelete,
            icon: const Icon(Icons.remove)
          ),
          Text("${subitem.subDiscountedPrice} \$" , style: const TextStyle(fontSize: 18 , color: Colors.red)),

    ],),
      ],
    );
  }
}

