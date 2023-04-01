import 'package:flutter/material.dart';

class OrderDetailsText extends StatelessWidget {
  final String text;
  const OrderDetailsText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text ,textAlign: TextAlign.center, style: const TextStyle(height: 2),);
  }
}