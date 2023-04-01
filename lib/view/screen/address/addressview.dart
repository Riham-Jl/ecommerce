import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/address/addressviewcontroller.dart';
import '../../../core/class/handlingdataviewauth.dart';
import '../../widget/address/addressviewcard.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    AddressViewControllerImp controller = Get.put(AddressViewControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:  Text("address".tr)),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          controller.gotoaddaddress();
        },
        child: const Icon(Icons.add), ),
      body:GetBuilder<AddressViewControllerImp>(builder: (controller) =>
       HandlingDataViewAuth(
          statusrequest: controller.statusrequest,
      widget: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder:  (context, i) =>
          AddressViewCard(address: controller.data[i])
           ),
      )
       ))
    );
  }
}

