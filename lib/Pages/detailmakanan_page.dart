import 'package:flutter/material.dart';
import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final MakananModel makanan = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(makanan.namaMakanan),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(makanan.fotoMakanan,
              width: 250,
              height: 250,
              fit: BoxFit.cover,),
            ],
          ),
          Text(makanan.hargaMakanan),
          Text(makanan.detailMakanan)
        ],
      )
    );
  }
}