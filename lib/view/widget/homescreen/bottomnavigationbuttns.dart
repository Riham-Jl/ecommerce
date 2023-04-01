import 'package:flutter/material.dart';
import 'package:project_ecommerce/core/constant/color.dart';
class BottomNavigationButtons extends StatelessWidget {
  final void Function()? ontap;
  final IconData icondata;
  final bool selected;
  final String title;
  const BottomNavigationButtons({
    Key? key,
    required this.ontap, required this.icondata, required this.selected, required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: ontap,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icondata , size: 30, color: selected? AppColor.secondaryColor : Colors.white,),
            Text(title , style: TextStyle(color: selected? AppColor.secondaryColor : Colors.white,))
          ],
        
      ),
    ),
            );
  }
}