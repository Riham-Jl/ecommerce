import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/favoritespagecontroller.dart';
import 'package:project_ecommerce/view/widget/favorites/itemslist.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavoritesPageControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("favorites".tr),),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: const [
            ItemsListFavorites()
          ],
        ),
      )
      
    );
  }
}