import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text( title, 
                  style: const TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: Colors.red),),
    );
  }
}
