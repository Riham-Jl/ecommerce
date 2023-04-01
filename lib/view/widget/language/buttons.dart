import 'package:flutter/material.dart';

class ButtonsLanguage extends StatelessWidget {
  final String title;
  final void Function()? onpressed;
  const ButtonsLanguage({
    Key? key, required this.title, this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 200,
      child: ElevatedButton(
      onPressed: onpressed,
      child: Text(title),
    ),);
  }
}