import 'package:flutter/material.dart';
import 'package:fluttertest/Component/custom_elevatedbutton.dart';
import 'package:fluttertest/Component/custom_squaretextfield.dart';
import 'package:fluttertest/Component/custom_squaretextfieldReg.dart';
import 'package:fluttertest/Component/custom_squaretextfieldRegNum.dart';
import 'package:fluttertest/Styles/theme.dart';
import 'package:fluttertest/controllers/registration_ctr.dart';
import 'package:fluttertest/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final controller = Get.put(RegistrationCtr());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtName = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtNoHP = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();


    return Scaffold(
      backgroundColor: ThemeColor.primary,
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: ThemeColor.primary,
        titleTextStyle: FontTheme.header,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(start: 110, top: 20),
            child: Row(
              children: [
                Text("Nama",
                style: FontTheme.textFieldTitle,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSquaretextfieldreg(hint: "Nama", txtController: txtName, hintColor: ThemeColor.hintColor, borderColor: ThemeColor.primaryText, txtColor: ThemeColor.primaryText)
              ],
            ),
          ),
                    Container(
            margin: EdgeInsetsDirectional.only(start: 110, top: 5),
            child: Row(
              children: [
                Text("Email",
                style: FontTheme.textFieldTitle,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSquaretextfieldreg(hint: "Email", txtController: txtEmail, hintColor: ThemeColor.hintColor, borderColor: ThemeColor.primaryText, txtColor: ThemeColor.primaryText)
              ],
            ),
          ),
                    Container(
            margin: EdgeInsetsDirectional.only(start: 110, top: 5),
            child: Row(
              children: [
                Text("Alamat",
                style: FontTheme.textFieldTitle,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSquaretextfieldreg(hint: "Alamat", txtController: txtAlamat, hintColor: ThemeColor.hintColor, borderColor: ThemeColor.primaryText, txtColor: ThemeColor.primaryText)
              ],
            ),
          ),
            Container(
            margin: EdgeInsetsDirectional.only(start: 110, top: 5),
            child: Row(
              children: [
                Text("Nomer HP",
                style: FontTheme.textFieldTitle,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSquaretextfieldregnum(hint: "Nomer HP", txtController: txtNoHP, hintColor: ThemeColor.hintColor, borderColor: ThemeColor.primaryText, txtColor: ThemeColor.primaryText)
              ],
            ),
          ),
            Container(
            margin: EdgeInsetsDirectional.only(start: 110, top: 5),
            child: Row(
              children: [
                Text("Jenis Kelamin",
                style: FontTheme.textFieldTitle,
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsetsDirectional.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200, // Adjust this width to match your custom text field
                    child: Obx(() => DropdownButtonFormField<String>(
                      value: controller.selectedGender.value,
                      icon: Icon(Icons.arrow_drop_down, color: ThemeColor.primaryText),
                      style: TextStyle(color: ThemeColor.primaryText),
                      decoration: InputDecoration(
                        hintText: "Jenis Kelamin",
                        hintStyle: TextStyle(color: ThemeColor.hintColor),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ThemeColor.primaryText),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ThemeColor.primaryText),
                        ),
                      ),
                      items: controller.genderOption.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        controller.selectedGender.value = newValue;
                      },
                    )),
                  ),
                ],
              ),
            ),
          CustomElevatedbutton(onPressed: (){
            Get.toNamed(
              Routes.cnfrmRegistration,
              arguments: {
                'name' : txtName.text.toString(),
                'email' : txtEmail.text.toString(),
                'alamat' : txtAlamat.text.toString(),
                'nomer' : txtNoHP.text.toString(),
                'jenisKelamin' : txtJenisKelamin.text.toString(),
              },             
            );
          } , text: "Register", backgroundColor: Colors.white, foregroundColor: Colors.black, textStyle: FontTheme.textFieldTitle)
        ],
      ),
    );
  }
}