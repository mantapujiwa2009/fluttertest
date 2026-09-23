import 'package:flutter/material.dart';
import 'package:fluttertest/controllers/calculator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatefulWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(CalculatorController());

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150.0,
                child: 
                Container(
                  margin: EdgeInsetsDirectional.only(end: 25),
                  child: TextField(
                    controller: txtAngka1,
                    decoration: InputDecoration(
                      hint: Text("angka pertama"),         
                      ),
                  ),
                ),
              ),
              SizedBox(
                width: 150.0,
                child: TextField(
                  controller: txtAngka2,
                  decoration: InputDecoration(
                    hint: Text("angka kedua")
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 30),
                child: ElevatedButton(
                  onPressed: (){
                    //panggil method tambah di controller
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                  }, child: Text("+")
                )
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 30),
                child: ElevatedButton(
                  onPressed: (){}, child: Text("-")
                )
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 30),
                child: ElevatedButton(
                  onPressed: (){}, child: Text("X")
                )
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 30),
                child: ElevatedButton(
                  onPressed: (){}, child: Text("/")
                )
              )
            ],
          ), 
          Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            child: Obx(()=> Text(widget.controller.hasil.toString()))
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 30),
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("reset")))         
        ],
      ),
    );
  }
}