import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class OrderDetailsTitle extends StatelessWidget {
  final String text;
  const OrderDetailsTitle({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text , 
    textAlign: TextAlign.center,
     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: AppColor.red),);
  }
}