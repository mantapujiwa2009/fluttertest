import 'package:flutter/material.dart';
import 'package:fluttertest/controllers/listmakanan_ctr.dart';
import 'package:get/get.dart';

class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});

  final controller = Get.put(ListmakananCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Makanan"),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context, index){
          final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: (){
                //pindah page ke details
              },
              child: ListTile(
              title: Text(makanan.namaMakanan),
              subtitle: Text(makanan.hargaMakanan),
              trailing: Icon(Icons.arrow_back_ios),
              ),
            );
          },
          itemCount: controller.listMakanan.length,
        ),
      ),
    );
  }
}