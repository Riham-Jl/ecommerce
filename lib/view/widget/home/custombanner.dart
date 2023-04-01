import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/homecontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';
class CustomBannerHome extends GetView<HomeControllerImp> {
  final String textone;
  final String texttwo;
  const CustomBannerHome({
    Key? key, required this.textone, required this.texttwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(15)
          ),
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( textone,  style: const TextStyle(color: Colors.white , fontSize: 22 , fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
            Text( texttwo , style: const TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold), )
          ],
        ),
        ),
        Positioned(
          right:controller.language=="en"? -20 : null,
          left:controller.language=="ar"? -20 : null,
          top: -20,
          child: Container(
            height: 140,
            width: 140,
             decoration: BoxDecoration(
            color: AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(65)
          )))
       
        
      ],
    );
  }
}
