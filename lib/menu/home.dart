import 'package:flutter/material.dart';
import 'package:fluttertest/controllers/home_ctr.dart';
import 'package:fluttertest/controllers/listmakanan_ctr.dart';
import 'package:fluttertest/routes.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

    final controller = Get.put(HomeCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Makanan"),
      ),
      body: SizedBox(
        height: 100,
        child: Obx(() => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
          final makanan = controller.listMakanan[index];
            return Card(
              child:SizedBox(
                width: 100,
                height: 10,
                child: InkWell(
                onTap: (){
                },
                child: Column(
                  children: [
                    Image.network(makanan.fotoMakanan,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,),
                    Text(makanan.namaMakanan),
                    Text(makanan.hargaMakanan)
                  ],
                 ),
                ),
              ),
            );
          },
          itemCount: controller.listMakanan.length,
         ),
        ),
      ),
    );
  }
}