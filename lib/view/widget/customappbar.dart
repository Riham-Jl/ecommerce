import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAppbarHome extends StatelessWidget {
  final void Function()? onpressedsearch;
  final void Function()? onpressedfavorite;
  final TextEditingController searchcontroller;
  final void Function(String)? onchangedsearch;

  const CustomAppbarHome({
    Key? key, this.onpressedsearch, this.onpressedfavorite, required this.searchcontroller, this.onchangedsearch,    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
     Expanded(
       child: TextFormField(
        onChanged: onchangedsearch,
        controller: searchcontroller,
      decoration: InputDecoration(
       prefixIcon: (IconButton(
        onPressed: onpressedsearch ,
        icon: const Icon(Icons.search),)),
       filled: true,
       fillColor: Colors.grey[100],
       hintText: "find product".tr,
       border: InputBorder.none,
                 ) ,
               ),
     ),
     Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: Colors.grey[100],
       child: IconButton(
        onPressed: onpressedfavorite, 
        icon: const Icon( Icons.favorite_outline)),
     )
     
       
                  ],
                );
  }
}