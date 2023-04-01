import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButton({
    Key? key, required this.text, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 200,
      color: AppColor.primaryColor,
       onPressed: onPressed, 
          child: Text( text , style: Theme.of(context).textTheme.button,));
  }
}