import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class ListmakananCtr extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Soto", hargaMakanan: "15.000"),
    MakananModel(namaMakanan: "Sate", hargaMakanan: "25.000"),
    MakananModel(namaMakanan: "Gudeg", hargaMakanan: "20.000"),
    MakananModel(namaMakanan: "Gulai", hargaMakanan: "27.000"),
    MakananModel(namaMakanan: "Sei sapi", hargaMakanan: "35.000"),
  ];
}