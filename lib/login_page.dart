import 'package:flutter/material.dart';
import 'package:fluttertest/Component/custom_button.dart';
import 'package:fluttertest/Component/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController TxtUsername = TextEditingController();
  TextEditingController txtPassword= TextEditingController();
  String loginStatus = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("login page")
        ), 

        body: Column(
          children: [
            Text("welcome to application " + loginStatus.toString(), style: TextStyle(
              fontSize: 20, 
              color: Colors.purple,
              fontStyle: FontStyle.italic)),
            Container(
              margin: EdgeInsets.all(100),
              child: CustomTextfield(txtController: TxtUsername, hint: "input username", hideInput: false,)
            ),
            Container(
              margin: EdgeInsets.all(100),
              child: CustomTextfield(txtController: txtPassword, hint: "input password", hideInput: true,)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(onPressed: (){
                //   setState(() {
                //     String Username = TxtUsername.text;
                //     String Password = txtPassword.text;

                //     if (Username == "admin123" && Password == "admin123"){
                //       print("sukses login");
                //       loginStatus = "admin";
                //     }else {
                //       print("gagal login");
                //       loginStatus = "failed";
                //     }
                //   });
                // }, child: Text("Login") ),
                // ElevatedButton(onPressed: (){}, child: Text("Register"))
                CustomButton(text: "Login"),
                CustomButton(text: "Register")
              ],
            )
          ],
        ),

    );
  }
}