import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../applinks.dart';
import '../../../controller/favoritescontroller.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/functions/translatedata.dart';
import '../../../data/model/items.dart';

class ItemsStack extends StatelessWidget {
  final ItemsModel item;
  const ItemsStack({
    Key? key, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
         children:[ Column(
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Hero(
                tag: "${item.itId}" ,
                child: CachedNetworkImage(imageUrl: "${AppLink.itemsImages}/${item.itImage}" , fit: BoxFit.fill,))
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(translatedata(item.itName, item.itNameAr) , style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text("${"rating".tr}:"),
                  item.rating!=null? Row(children:
                  [ ...List.generate(
                    double.parse(item.rating.toString()).toInt(), (index) => const Icon(Icons.star , size: 13, color: Colors.yellow,)),
                    ...List.generate(
                    5-double.parse(item.rating.toString()).toInt(), (index) => const Icon(Icons.star , size: 13,))]
                    ): const Text("none")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("${item.itDiscountedPrice}\$" , style: const TextStyle(color: Colors.red , fontSize: 16),),
                  GetBuilder<FavoritesController>(builder: (favcontroller) {
                    return IconButton(onPressed: (){favcontroller.favoritesadddelete(item.itId);}, icon: Icon(favcontroller.isfavorite[item.itId]=="1"? Icons.favorite : Icons.favorite_outline , color: Colors.red,))    ;}          
              )],
              ),
            
            
          ],
           ),
           int.parse(item.itDiscount!) >0 ? Positioned(
            child: Image.asset(AppImageAsset.discount , width: 40, height: 40,))
         : Container()
         ]
       )
     ;
  }
}