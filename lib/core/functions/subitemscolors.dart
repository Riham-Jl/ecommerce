import 'package:flutter/material.dart';

subItemsColor(String color){
switch (color) {
    case "black": 
      return Colors.black;

    case "gold":
      return const Color.fromARGB(255, 179, 137, 21);

    case "roze gold":
    return const Color.fromARGB(255, 233, 139, 102);

    case "grey":
    return Colors.grey;

    case "blue":
    return Colors.blue;

    case "white":
    return Colors.white;

    default:
      return Colors.red[100];      
  }}