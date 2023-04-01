import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/address/addressviewcontroller.dart';
import '../../../data/model/address.dart';
class AddressViewCard extends GetView<AddressViewControllerImp> {
  final AddressModel address;
  const AddressViewCard({
    Key? key, required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text( "${address.addressName}"),
        subtitle: Text("${address.addressStreet} , ${address.addressBuilding}"),
        trailing: IconButton(
          onPressed: (){
            controller.deleteaddress(address.addressId);
          },
          icon:const Icon(Icons.delete),
        ),
      ),
    );
  }
}