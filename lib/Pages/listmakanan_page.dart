import 'package:flutter/material.dart';
import 'package:fluttertest/Pages/detailmakanan_page.dart';
import 'package:fluttertest/controllers/listmakanan_ctr.dart';
import 'package:fluttertest/routes.dart';
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
        child: Obx(() => ListView.builder(itemBuilder: (context, index){
          final makanan = controller.listMakanan[index];
            return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
            child: InkWell(
              onTap: (){
                Get.toNamed( Routes.detailmakanan, arguments: makanan);
              },
              child: ListTile(
              title: Text(makanan.namaMakanan),
              leading: Image.network(makanan.fotoMakanan,
              width: 50,
              height: 50,
              fit: BoxFit.cover,),
              subtitle: Text(makanan.hargaMakanan),
              trailing: Icon(Icons.arrow_circle_right_outlined),
               ),
              )
            );
          },
          itemCount: controller.listMakanan.length,
         ),
        ),
      ),
    );
  }
}