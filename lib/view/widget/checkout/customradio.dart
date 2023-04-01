import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CustomRadioCheckout extends StatelessWidget {
      final String title;
      final String? subtitle;
      final String value;
      final Object? groupvalue;
      final void Function(Object?)? onchanged;

  const CustomRadioCheckout({super.key, required this.title,this.subtitle, required this.value, required this.groupvalue, required this.onchanged});
  

  @override
  Widget build(BuildContext context) {

    return RadioListTile(
      activeColor: AppColor.primaryColor,
      title: Text(title),
      subtitle: subtitle!=null? Text("$subtitle") : null,
      value: value,
       groupValue: groupvalue,
        onChanged: onchanged );
  }
}