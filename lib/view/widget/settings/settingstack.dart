import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class SettingsStack extends StatelessWidget {
  const SettingsStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: Get.width/2,
          color: AppColor.primaryColor
        ),
        const Positioned(
          bottom: -25,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(Icons.person , size: 60, color: AppColor.red,),
          ),
        )
      ],
    );
  }
}