import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/offerscontroller.dart';
import 'package:project_ecommerce/data/model/items.dart';
import 'package:project_ecommerce/view/widget/items/itemsstack.dart';
import '../../../controller/favoritescontroller.dart';
import '../../../core/class/handlingdataview.dart';

class OffersItemsList extends StatelessWidget {
  const OffersItemsList({super.key});

  @override
  Widget build(BuildContext context) {
        FavoritesController favcontroller = Get.put(FavoritesController());
    return GetBuilder<OffersControllerImp>(builder: (controller) {
       return  HandlingDataView(
          statusrequest:controller.statusrequest,
          widget:
             GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( childAspectRatio: 0.7 ,crossAxisCount: 2 , crossAxisSpacing: 10 , mainAxisSpacing: 30),
                 itemBuilder: ((context, i) {
                  favcontroller.setmapfav(controller.items[i]['it_id'] , controller.items[i]['favorite']);
                   return (
                    ItemsCard(item:ItemsModel.fromJson(controller.items[i]))
                   );
                 })),
            );}
            );
  }
}


class ItemsCard extends GetView<OffersControllerImp> {
  final ItemsModel item;
  const ItemsCard({
    Key? key, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
     Card(
    child: InkWell(
      onTap: () {
        controller.goToDetails(item);
      },
       child: ItemsStack(item: item))
     ) ;
  }
}