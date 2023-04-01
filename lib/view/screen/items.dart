import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/itemscontroller.dart';
import 'package:project_ecommerce/view/widget/items/itemslist.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/customappbar.dart';
import '../widget/items/categorieslist.dart';
import '../widget/search/searchresult.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(ItemsControllerImp());
    return Scaffold(
      body: GetBuilder<ItemsControllerImp>(builder: (controller) =>
       Container(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            CustomAppbarHome(searchcontroller: controller.search!,
                    onchangedsearch: (val){
                      controller.onchangesearch(val);
                     
                    },
                    onpressedsearch:(){
                    controller.searchitems();
                  } ,
                  onpressedfavorite: (){
                    controller.gotofavorites();
                  },
                    ),
            HandlingDataView(
                   statusrequest:controller.statusrequest,
                   widget: controller.isSearch?
                   SearchResult(items: controller.searchlist)
                    : Column(
                      children: const [
                          CategoriesListItems(),
                          ItemsList()
                      ],
                    )
                    )
          ],
        ),
      )
      )
      
    );
  }
}