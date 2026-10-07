import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';

class RegistrationCtr extends GetxController {
  late TextEditingController txtName;
  late TextEditingController txtEmail;
  late TextEditingController txtAlamat;
  late TextEditingController txtNoHP;

  @override
  void onInit() {
    super.onInit();
    // Initialize controllers
    txtName = TextEditingController();
    txtEmail = TextEditingController();
    txtAlamat = TextEditingController();
    txtNoHP = TextEditingController();
  }

  var selectedGender = RxnString();

  final List<String> genderOption = ['Laki - Laki', 'Perempuan'];
}