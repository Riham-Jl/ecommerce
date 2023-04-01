import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/favoritespagecontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import 'package:project_ecommerce/data/model/items.dart';
import '../../../applinks.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/functions/translatedata.dart';
import '../../../data/model/favoritesmodel.dart';

class ItemsListFavorites extends StatelessWidget {
  const ItemsListFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoritesPageControllerImp>(builder: (controller) =>
    HandlingDataView(
          statusrequest:controller.statusrequest,
          widget:
             GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( childAspectRatio: 0.7 ,crossAxisCount: 2 , crossAxisSpacing: 10 , mainAxisSpacing: 30),
                 itemBuilder: ((context, i) {
                   return (
                    ItemsCard(item:controller.items[i])
                   );
                 })),
            )
            );
  }
}


class ItemsCard extends StatelessWidget {
  final FavoritesModel item;
  const ItemsCard({
    Key? key, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoritesPageControllerImp>(builder: (controller) =>
     Card(child: InkWell(
      onTap: () {
        controller.goToDetails(ItemsModel.fromJson(item.toJson()));
      },
       child: Column(
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
                Text("${item.itDiscountedPrice}\$" , style: const TextStyle(color: AppColor.red , fontSize: 16),),
                IconButton(onPressed: (){
                  controller.deletefromfavorites(item.favId!, item.itId!);
                }, icon: const Icon(Icons.delete,))
              ],
            ),
     
     
        ],
         ),
     ) ));
  }
}