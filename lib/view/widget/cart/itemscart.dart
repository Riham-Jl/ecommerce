import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import '../../../applinks.dart';
import '../../../controller/cartpagecontroller.dart';
import '../../../data/model/cart.dart';
class ItemsCard extends GetView<CartPageCpntrollerImp> {
  final CartModel item;
  const ItemsCard({
    Key? key, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(imageUrl: "${AppLink.itemsImages}/${item.itImage}")
              ),
            Expanded(
              flex: 3,
              child: ListTile(
                trailing: Text( "${item.priceItem} \$" , style: const TextStyle(fontSize: 17, color: AppColor.red),),
                title: Text( "${item.itName}" , style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                subtitle: Text( "${item.subColor}" , style: const TextStyle(fontSize: 17,),),
              )),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: (){
                          controller.addtocart(item.subId , item.itId);
            },
           icon: const Icon(Icons.add)),
            Text("${item.countItem}" , style: const TextStyle(fontSize: 16),),
            IconButton(
              onPressed: (){
              controller.deletefromcart( item.subId,item.itId);
            },
              icon: const Icon(Icons.remove)
            )
                    
                  ],
                ) )
          ],
        ),
      ),
    );
  }
}