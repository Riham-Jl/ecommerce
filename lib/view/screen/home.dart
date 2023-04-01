import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/homecontroller.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/home/categorieslist.dart';
import '../widget/customappbar.dart';
import '../widget/home/custombanner.dart';
import '../widget/home/customtitle.dart';
import '../widget/home/itemslist.dart';
import '../widget/search/searchresult.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(HomeControllerImp());

    return  GetBuilder<HomeControllerImp>(builder: (controller) =>
       Container(
          padding: const EdgeInsets.all(25),
          child: 
              ListView
              (
                children:[
                  CustomAppbarHome(
                    searchcontroller: controller.search!,
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
                    :Column(
                    children: [
                   const SizedBox(height:15),
                   CustomBannerHome (textone: "home title1".tr , texttwo: "home title2".tr),
                   const SizedBox(height: 10,),
                   CustomTitleHome(title: "categories".tr ),
                   const CategoriesList(),
                   CustomTitleHome(title: "top selling products".tr ),
                   const ItemsListHome()
                ]))
                ]
              ), 
      )
    );
  }
}

