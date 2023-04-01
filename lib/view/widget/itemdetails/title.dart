import 'package:flutter/material.dart';
import '../../../core/functions/translatedata.dart';
import '../../../data/model/subitems.dart';

class ItemsDetailsTitle extends StatelessWidget {
  final SubItemsModel subitem;
  const ItemsDetailsTitle({
    Key? key, required this.subitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.all(20),
    child: Text(translatedata(subitem.itName, subitem.itNameAr) ,
    textAlign: TextAlign.center,
     style: Theme.of(context).textTheme.headline1));
  }
}

