import 'package:flutter/material.dart';
import 'package:fluttertest/Pages/login_clone_page.dart';
import 'package:fluttertest/kalkulator.dart';
import 'package:fluttertest/kalkulator_page.dart';
import 'package:fluttertest/login_clone.dart';
import 'package:fluttertest/login_page.dart';
import 'package:fluttertest/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "MyLearningApp",
      initialRoute: Routes.listmakanan,
      getPages: Routes.pages,
    );
  }
}
