import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(

       colorScheme: ColorScheme.fromSwatch().copyWith(
           primary: AppColor.primaryColor,
           secondary: AppColor.red),
       textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),
          bodyText1: TextStyle(color: AppColor.grey , height: 1.5 , fontSize: 14),
          button: TextStyle(color: AppColor.white , fontWeight: FontWeight.bold)
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primaryColor,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColor.white),
          titleTextStyle: TextStyle(
          color: AppColor.white,
       fontWeight: FontWeight.bold,
       fontSize: 25
          ),),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColor.red)
);

/*ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.grey),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.grey),
      bodyText1: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2: TextStyle(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);*/
