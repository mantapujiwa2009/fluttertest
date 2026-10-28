import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class DetailmakananCtr extends GetxController{
  late String namaMakanan;
  late String hargaMakanan;
  late String detailMakanan;
  late String fotoMakanan;
  late String ratingMakanan;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments.namaMakanan;
    hargaMakanan = arguments.hargaMakanan;
    detailMakanan = arguments.detailMakanan;
    fotoMakanan = arguments.fotoMakanan;
    ratingMakanan = arguments.ratingMakanan;
  }
}