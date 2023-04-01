import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class ButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonAuth({
    Key? key, required this.text, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 300,
     child: MaterialButton(
       padding: const EdgeInsets.all(15),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
       color: AppColor.primaryColor,
       onPressed: onPressed ,
       child: Text (text , style: Theme.of(context).textTheme.button),
     ),
    );
  }
}
