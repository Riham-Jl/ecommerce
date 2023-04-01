import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/core/functions/translatedata.dart';
import 'package:project_ecommerce/data/model/categories.dart';
import '../../../controller/itemscontroller.dart';

class CategoriesListItems extends GetView<ItemsControllerImp> {
  const CategoriesListItems({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          itemBuilder: ((context, i) {
            return Categories(category: CategoriesModel.fromJson(controller.categories[i]));
          })),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories( {
    Key? key, required this.category,

  }) : super(key: key);

  final CategoriesModel category;


  @override
  Widget build(BuildContext context) {
    
    return  GetBuilder<ItemsControllerImp>(builder: (controller) => InkWell(
      onTap:(){
        controller.changecatid(category.catId.toString());
      },
      child: 
          Container(
            decoration: category.catId==controller.catId? const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.red , width: 2))
            ): null,
            margin: const EdgeInsets.all(15),
            child: Text(translatedata(category.catName, category.catNameAr) , style: const TextStyle( fontSize: 18 , fontWeight: FontWeight.bold))
          )
    ));
  }
}

