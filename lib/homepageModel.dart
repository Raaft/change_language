import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageModel extends GetxController {
  var count = 5.obs;

  increase() {
    count++;
  }

 void decrease() {
    count--;
  }
}
