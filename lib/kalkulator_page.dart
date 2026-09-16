import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
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
                    decoration: InputDecoration(
                      hint: Text("angka pertama"),         
                      ),
                  ),
                ),
              ),
              SizedBox(
                width: 150.0,
                child: TextField(
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
                  onPressed: (){}, child: Text("+")
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
            child: Text("Hasil")
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