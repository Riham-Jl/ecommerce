import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class GoToSignupOrIn extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? ontap;
  const GoToSignupOrIn({
    Key? key, required this.textone, required this.texttwo, this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text( textone),
        InkWell(
          onTap: ontap, 
          child: Text(texttwo , style: const TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),)),
      ],),
    );
  }
}


