import 'package:fluttertest/Pages/cnfrmRegistration_page.dart';
import 'package:fluttertest/Pages/detailmakanan_page.dart';
import 'package:fluttertest/Pages/drawer_page.dart';
import 'package:fluttertest/Pages/listmakanan_page.dart';
import 'package:fluttertest/Pages/mainMenu_page.dart';
import 'package:fluttertest/Pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list variable nama halaman
  static const String registration = "/registration";
  static const String cnfrmRegistration = "/cnfrmRegistration";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";
  static const String menu = "/menu";
  static const String drawer = "/drawer";

  static final pages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: cnfrmRegistration, page: ()=> CnfrmregistrationPage()),
    GetPage(name: listmakanan, page: ()=> ListmakananPage()),
    GetPage(name: detailmakanan, page: ()=> DetailmakananPage()),
    GetPage(name: menu, page: ()=> MainmenuPage()),
    GetPage(name: drawer, page: ()=> DrawerPage())
    
  ];
}