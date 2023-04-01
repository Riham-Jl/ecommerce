import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../applinks.dart';
import '../../../controller/homecontroller.dart';
import '../../../data/model/items.dart';


class SearchResult extends GetView<HomeControllerImp> {
  final List<ItemsModel> items;
  const SearchResult({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: ((context, i) {
          return SerchResultCard(
            item: items[i],
            onTap: (){
                  controller.goToDetails(items[i]);
                });
        }),
    ));
  }
}

class SerchResultCard extends StatelessWidget{
  const SerchResultCard({
    Key? key,
    required this.item, required this.onTap
  }) : super(key: key);

  final ItemsModel item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 120,
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network("${AppLink.itemsImages}/${item.itImage}" , fit: BoxFit.fill,)
              ),
              Expanded(
                flex: 2,
                child: ListTile(
                onTap: onTap,
                title: Text("${item.itName}"),
                subtitle: Text("${item.catName}"),
              ))
          ],
        ),
      ),
    );
  }
}