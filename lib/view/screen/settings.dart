import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce/controller/settingscontroller.dart';
import 'package:project_ecommerce/core/constant/color.dart';
import '../widget/settings/settingstack.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsControllerImp controller = Get.put(SettingsControllerImp());
    return ListView(
      children: [
        const SettingsStack(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50 , horizontal: 15),
          child: Card(
            child: Column(
              children: [
                GetBuilder<SettingsControllerImp>(builder: (controller) =>ListTile(
                  title: Text("enable notification".tr),
                  trailing: Switch(
                    activeColor: AppColor.primaryColor,
                    onChanged: ((value) {
                      controller.changenotification(value);
                  }),
                  value: controller.notification!,
                ),)),
                ListTile(
                  onTap: (){
                    controller.gotoaddress();
                  },
                  title: Text("address".tr),
                  trailing: const Icon(Icons.location_on_outlined),
                ),
                ListTile(
                  onTap: (){
                    controller.gotomyorders();
                  },
                  title: Text("my orders".tr),
                  trailing: const Icon(Icons.card_travel),
                ),
                ListTile(
                  onTap: (){
                    controller.gotolanguage();
                  },
                  title: Text("change language".tr),
                  trailing: const Icon(Icons.language),
                ),
                ListTile(
                  onTap: (){
                    controller.logout();
                  },
                  title: Text("sign out".tr),
                  trailing: const Icon(Icons.exit_to_app),
                ),
                
              ],
            ),
          ),
        )
      ],
    );
  }
}

