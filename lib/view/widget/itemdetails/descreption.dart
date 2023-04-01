import 'package:flutter/material.dart';
import '../../../core/functions/translatedata.dart';
import '../../../data/model/items.dart';

class ItemsDetailsDescreption extends StatelessWidget {
  final ItemsModel item;
  const ItemsDetailsDescreption({
    Key? key, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Text(translatedata(item.itDesc, item.itDescAr) , 
      style: const TextStyle(fontSize: 18 , height: 1.5),),
    );
  }
}

