import 'package:flutter/material.dart';
import 'package:fluttertest/controllers/mainmenu_ctr.dart';
import 'package:get/get.dart';

class MainmenuPage extends StatelessWidget {
  MainmenuPage({super.key});

  final mainMenuCtr = Get.put(MainmenuCtr());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: mainMenuCtr.selectedIndex.value,
        children: mainMenuCtr.listPage,
        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainMenuCtr.changePage,
        currentIndex: mainMenuCtr.selectedIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
            )
        ]
      ),
    ));
  }
}