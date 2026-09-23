import 'package:flutter/material.dart';
import 'package:fluttertest/Component/custom_squaretextfield.dart';
import 'package:fluttertest/controllers/calculator_controller.dart';
import 'package:get/get.dart';

class Kalkulator extends StatelessWidget {
  Kalkulator({super.key});

  final controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50)
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0,
                  child: 
                  Container(
                    margin: EdgeInsetsDirectional.only(end: 25,),
                    child: CustomSquaretextfield(hint: "angka1", 
                    txtController: txtAngka1, 
                    hintColor: Colors.grey,
                    borderColor: Colors.black,
                    txtColor: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  child: CustomSquaretextfield(hint: "angka2", 
                  txtController: txtAngka2, 
                  hintColor: Colors.grey,
                  borderColor: Colors.black, 
                  txtColor: Colors.black)
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 30, end: 10),
                child: ElevatedButton(
                  onPressed: (){
                    //panggil method tambah di controller
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.tambah(angka1, angka2);
                  }, child: Text("+"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 177, 182, 184),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    )
                  ),
                )
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 30, end : 10),
                child: ElevatedButton(
                  onPressed: (){
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.kurang(angka1, angka2);
                  }, child: Text("-"),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 177, 182, 184),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    )
                  ),
                )
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 30, end :10),
                child: ElevatedButton(
                  onPressed: (){
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.kali(angka1, angka2);
                  }, child: Text("X"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 177, 182, 184),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    )
                  ),                  
                )
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 30, end: 10),
                child: ElevatedButton(
                  onPressed: (){
                    double angka1 = double.parse(txtAngka1.text);
                    double angka2 = double.parse(txtAngka2.text);
                    controller.bagi(angka1, angka2);
                  }, child: Text("/"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 177, 182, 184),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    )
                  ),                  
                )
              )
            ],
          ), 
          Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            child: Obx(()=> Text(controller.hasil.toString()))
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 30),
              child: ElevatedButton(
                onPressed: (){
                  txtAngka2.text = "";
                  txtAngka1.text = "";
                  controller.hasil.value = 0;
                }, 
                child: Text("reset"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 177, 182, 184),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    )
                  ),                
                ))         
        ],
      ),
    );
  }
}