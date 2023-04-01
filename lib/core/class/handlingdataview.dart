import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:project_ecommerce/core/class/statusrequest.dart';
import 'package:project_ecommerce/core/constant/imageasset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusrequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusrequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return 
      statusrequest==StatusRequest.loading
      ?  Center(child: Lottie.asset(AppImageAsset.loading , width: 250 , height: 250),)    
      :statusrequest==StatusRequest.serverfailure
      ?  Center(child: Lottie.asset(AppImageAsset.server , width: 250 , height: 250),)
      :statusrequest==StatusRequest.serverExcption
      ?  Center(child: Lottie.asset(AppImageAsset.server , width: 250 , height: 250),)
      :statusrequest==StatusRequest.offlinefailure
      ?  Center(child: Lottie.asset(AppImageAsset.offline , width: 250 , height: 250),)
      :statusrequest==StatusRequest.failure
      ?  Center(child: Lottie.asset(AppImageAsset.nodata , width: 250 , height: 250),)
      : widget;
     
  }
}