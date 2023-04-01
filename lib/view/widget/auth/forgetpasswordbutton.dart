import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgetpasseordbutton extends StatelessWidget {
  final void Function()? ontap;
  const Forgetpasseordbutton({
    Key? key, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.symmetric(vertical: 10),
     width: double.infinity,
      child: InkWell(
       onTap: ontap,
       child:  Text("forget password".tr , textAlign: TextAlign.end, style: const TextStyle(decoration: TextDecoration.underline ),),
      ),
    );
  }
}

