import 'package:flutter/material.dart';
import 'package:fluttertest/Component/custom_avatar.dart';
import 'package:fluttertest/Component/custom_info.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF0b1014),
      appBar: AppBar(title: Text("Profil"),
      backgroundColor: const Color(0xFF0b1014),
      foregroundColor: const Color(0xFFf6f7f9),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: CustomAvatar(backgroundColor: Colors.grey, foregroundColor: Colors.white)
                ),
              ]
              ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 30, start: 50),
                  child: CustomInfo(title: "Nama", details: "Bing", icon: Icons.person),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 30, start: 50),
                  child: CustomInfo(title: "Tentang", details: "Atur Isi Pengguna", icon: Icons.info),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 30, start: 50),
                  child: CustomInfo(title: "Nama Pengguna", details: "Pesan nama pengguna", icon: Icons.alternate_email),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 30, start: 50),
                  child: CustomInfo(title: "Telepon", details: "+62 0858-7768-4417", icon: Icons.phone),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 30, start: 50),
                  child: CustomInfo(title: "Tautan", details: "Tambah tautan", icon: Icons.link),
                ),
            ],
          ),
        );
  }
}