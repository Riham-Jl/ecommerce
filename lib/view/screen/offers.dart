import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/offerscontroller.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/customappbar.dart';
import '../widget/offersitemslist.dart';
import '../widget/search/searchresult.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
      Get.put(OffersControllerImp());
    return GetBuilder<OffersControllerImp>(builder: (controller) => Container(
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
                    :Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const OffersItemsList())                     
                    )
          ],
        ),
      ));
  }
}