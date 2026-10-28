import 'package:flutter/material.dart';
import 'package:fluttertest/menu/history.dart';
import 'package:fluttertest/menu/home.dart';
import 'package:fluttertest/menu/profile.dart';
import 'package:get/get.dart';


class DrawerCtr extends GetxController {
    final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  // list of page inside menu
  List<Widget> listPage = [
    HomePage(),
    HistoryPage(),
    ProfilePage()
  ];
}