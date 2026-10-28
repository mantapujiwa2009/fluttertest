import 'package:flutter/material.dart';
import 'package:fluttertest/Styles/theme.dart';
import 'package:fluttertest/controllers/detailmakanan_ctr.dart';
import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  final controller = Get.put(DetailmakananCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(controller.namaMakanan),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(controller.fotoMakanan,
              width: 250,
              height: 250,
              fit: BoxFit.cover,),
            ],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.hargaMakanan,
                style: FontTheme.harga,),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 30),
                  child: Icon(Icons.star),
                ),
                Container(
                  child: Text(controller.ratingMakanan,
                  style: FontTheme.harga)
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(top: 20),
            child: Text(controller.detailMakanan))
        ],
      )
    );
  }
}