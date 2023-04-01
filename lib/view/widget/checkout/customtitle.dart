import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomTitleCheckout extends StatelessWidget {
  final String title;
  const CustomTitleCheckout({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text( title , 
    style: const TextStyle(color: AppColor.red ,fontWeight: FontWeight.bold , fontSize: 20),);
  }
}