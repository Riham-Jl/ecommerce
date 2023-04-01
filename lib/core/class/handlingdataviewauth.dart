import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:project_ecommerce/core/class/statusrequest.dart';
import 'package:project_ecommerce/core/constant/imageasset.dart';

class HandlingDataViewAuth extends StatelessWidget {
  final StatusRequest? statusrequest;
  final Widget widget;
  const HandlingDataViewAuth({super.key, required this.statusrequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return 
      statusrequest==StatusRequest.loading
      ?  Center(child: Lottie.asset(AppImageAsset.loading , width: 250 , height: 250),)    
      : widget;
     
  }
}