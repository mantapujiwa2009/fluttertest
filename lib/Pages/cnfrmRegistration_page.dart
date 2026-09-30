import 'package:flutter/material.dart';
import 'package:fluttertest/Component/custom_elevatedbutton.dart';
import 'package:fluttertest/Styles/theme.dart';
import 'package:fluttertest/controllers/cnfrmRegistration_ctr.dart';
import 'package:get/get.dart';

class CnfrmregistrationPage extends StatelessWidget {
  CnfrmregistrationPage({super.key});

  final controller = Get.put(CnfrmregistrationCtr());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ThemeColor.primary,
      appBar: AppBar(
        backgroundColor: ThemeColor.primary,
        title: Text("CONFIRM"),
        centerTitle: true,
        titleTextStyle: FontTheme.header,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nama : ${controller.nama}",style: FontTheme.textFieldTitle,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Email : ${controller.email}", style: FontTheme.textFieldTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("alamat : ${controller.alamat}", style: FontTheme.textFieldTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [
              Text("nomer : ${controller.nomer}", style: FontTheme.textFieldTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [
              Text("jenis Kelamin : ${controller.kelamin}", style: FontTheme.textFieldTitle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedbutton(text: "Oke", backgroundColor: Colors.black, foregroundColor: Colors.white, textStyle: FontTheme.textFieldTitle, 
              onPressed: (){
                Get.back();
              }),
            ],
          )
        ]
      ),
    );
  }
}