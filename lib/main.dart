import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/Utilites/transliation_utilti.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      translations: Translation(),
      locale: Locale("en"),
      fallbackLocale: Locale("en"),
    );
  }
}
