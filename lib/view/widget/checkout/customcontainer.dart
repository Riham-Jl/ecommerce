import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key, required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.primaryColor , width: 1.5 ),
        borderRadius: BorderRadius.circular(10)),
      child: widget
    );
  }
}