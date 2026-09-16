import 'package:flutter/material.dart';
import 'package:fluttertest/Component/custom_elevatedbutton.dart';
import 'package:fluttertest/Component/custom_outlinebutton.dart';
import 'package:fluttertest/Component/custom_squaretextfield.dart';
import 'package:fluttertest/Styles/theme.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword  = TextEditingController();
    return Scaffold(
      backgroundColor: ThemeColor.primary,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Log in to Spotify"),
        backgroundColor: ThemeColor.primary,
        titleTextStyle: FontTheme.header,
      ),
      body: Column(
        children: [
          Image.asset(
            'lib/Resource/Spotify-removebg-preview.png',
            width: 150,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 40),
                child: CustomOutlinebutton(txt: "Continue with Google", 
                backgroundColor: ThemeColor.primary, 
                foregroundColor: ThemeColor.primaryText,
                 txtStyle: FontTheme.loginOption, 
                 borderColor: ThemeColor.primaryText),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: CustomOutlinebutton(txt: "Continue with Facebook", 
                backgroundColor: ThemeColor.primary, 
                foregroundColor: ThemeColor.primaryText,
                 txtStyle: FontTheme.loginOption, 
                 borderColor: ThemeColor.primaryText),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: CustomOutlinebutton(txt: "Continue with Apple", 
                backgroundColor: ThemeColor.primary, 
                foregroundColor: ThemeColor.primaryText,
                 txtStyle: FontTheme.loginOption, 
                 borderColor: ThemeColor.primaryText),
              )
            ],
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end:160, top: 100),
            child: Text("Email or Username", style: FontTheme.textFieldTitle,),
          ),
          CustomSquaretextfield(
            hint: "Email or Username", 
            txtController: txtUsername, 
            hintColor: ThemeColor.hintColor, 
            borderColor: ThemeColor.primaryText, 
            txtColor: ThemeColor.primaryText
            ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 220, top: 50),
            child: Text("Password", style: FontTheme.textFieldTitle,),
          ),
          CustomSquaretextfield(
            hint: "Password", 
            txtController: txtPassword, 
            hintColor: ThemeColor.hintColor, 
            borderColor: ThemeColor.primaryText, 
            txtColor: ThemeColor.primaryText
            ),
          SizedBox(
            width: 280,
            height: 70, 
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 30),
              child: CustomElevatedbutton(
              text: "Log In", 
              backgroundColor: ThemeColor.buttonLogin, 
              foregroundColor: ThemeColor.txtLogin, 
              textStyle: FontTheme.loginOption),
            ),       
          )                                 
        ],
      ),
    );
  }
}