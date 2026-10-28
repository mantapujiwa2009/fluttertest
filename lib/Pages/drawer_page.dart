import 'package:flutter/material.dart';
import 'package:fluttertest/controllers/drawer_ctr.dart';
import 'package:get/get.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({super.key});

  final drawerCtr = Get.put(DrawerCtr());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: const Text("Menu Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                drawerCtr.changePage(0);
                Get.back(); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text("History"),
              onTap: () {
                drawerCtr.changePage(1);
                Get.back(); 
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                drawerCtr.changePage(2);
                Get.back();
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: drawerCtr.selectedIndex.value,
        children: drawerCtr.listPage,
      ),
    ));
  }
}