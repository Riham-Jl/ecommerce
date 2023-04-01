import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp (){
  Get.defaultDialog(
    title: "warning".tr,
    middleText: "do you want to exit app".tr,
    actions: [
      ElevatedButton(
        onPressed: (){
          Get.back();
        }, child:  Text("no".tr)),
        ElevatedButton(
          onPressed: (){
            exit(0);
          }, child:  Text ("yes".tr))
    ]
  );
  return Future.value(true);
}