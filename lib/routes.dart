import 'package:fluttertest/Pages/cnfrmRegistration_page.dart';
import 'package:fluttertest/Pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list variable nama halaman
  static const String registration = "/registration";
  static const String cnfrmRegistration = "/cnfrmRegistration";

  static final pages=[
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: cnfrmRegistration, page: ()=> CnfrmregistrationPage()),
  ];
}