import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/homecontroller.dart';
import 'package:project_ecommerce/core/functions/translatedata.dart';
import 'package:project_ecommerce/data/model/categories.dart';
import '../../../applinks.dart';

class CategoriesList extends GetView<HomeControllerImp> {
  const CategoriesList({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: ((context, i) {
          List cats = controller.categories ;
          String catId = controller.categories[i]['cat_id'].toString(); 
          return Categories(
            category: CategoriesModel.fromJson(controller.categories[i]),
            onTap:(){
              controller.gotoitems(cats, catId );}
              );
        })),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key, required this.category, required this.onTap

  }) : super(key: key);

  final CategoriesModel category;
  final void Function()? onTap;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap  ,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network("${AppLink.categoriesImages}/${category.catImage}" , fit: BoxFit.fill,)),
          ),
          Text(translatedata(category.catName, category.catNameAr))
    
        ],
      ),
    );
  }
}

