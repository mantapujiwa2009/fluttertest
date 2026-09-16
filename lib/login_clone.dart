import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String statusLogin = "";  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Log in to Spotify"),
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        titleTextStyle: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
            Text("Status: " + statusLogin.toString(), style: TextStyle(
              color: Colors.white
            ),),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 40),
                child: OutlinedButton(
                  onPressed: (){}, 
                  child: Text("Continue with Google"),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                    foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),                    
                    fixedSize: Size(280,45),                    
                    side: BorderSide(
                      color: Colors.white,
                      width: 0.7,
                    )
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: OutlinedButton(
                onPressed: (){}, 
                child: Text("Continue with Facebook"),
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),                  
                  fixedSize: Size(280,45),                
                  side: BorderSide(
                    color: Colors.white,  
                    width: 0.7,
                  )
                ),),
              )
            ],
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 10),
                child: OutlinedButton(
                onPressed: (){}, 
                child: Text("Continue with Apple"),
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  fixedSize: Size(280,45),
                  side: BorderSide(
                    color: Colors.white,  
                    width: 0.7,
                  )
                ),),
              )
            ],
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 160, top: 100),
            child: Text("Email or Username", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          SizedBox(
            width: 280,
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              controller: txtUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                  borderSide: BorderSide(color: Colors.white)
                ),
                hintText: 'Email or Username',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 80, 80, 80)
                )),),
          ),

          Container(
            margin: EdgeInsetsDirectional.only(end: 220, top: 50),
            child: Text("Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          SizedBox(
            width: 280,
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                  borderSide: BorderSide(color: Colors.white)
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 80, 80, 80)
                )),),
          ),
          SizedBox(
            width: 280,
            height: 70,
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 30),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                  String Username = txtUsername.text;
                  String Password = txtPassword.text;

                  if (Username == "admin123" && Password == "admin123"){
                      statusLogin = "sukses";
                    print("sukses login");
                  }else {
                      statusLogin = "gagal";
                    print("Gagal login");
                  };                    
                  });
                }, 
                child: Text("Log In"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 134, 230, 24),
                  foregroundColor: const Color.fromARGB(255, 49, 49, 49),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),),
            )
              )          
        ],
      ),
    );
  }
}