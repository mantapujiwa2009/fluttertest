import 'package:get/get.dart';

class CalculatorController extends GetxController {

  var hasil = 0.0.obs;

  //method tambah, kurang, kali dan bagi
  void tambah(double angka1, double angka2){
      double hasilTambah = angka1 + angka2;
      hasil.value = hasilTambah;
      Get.snackbar("hasil tambah",
       "hasilnya ${hasilTambah}",
       snackPosition: SnackPosition.BOTTOM);
  }

  void kurang(double angka1, double angka2){
    double hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar("hasil kurang",
     "hasilnya ${hasilKurang}",
     snackPosition: SnackPosition.BOTTOM);    
  }

  void kali(double angka1, double angka2){
    double hasilKali = angka1*angka2;
    hasil.value = hasilKali;
    Get.snackbar("hasil kali",
     "hasilnya ${hasilKali}",
     snackPosition: SnackPosition.BOTTOM);        
  }

  void bagi(double angka1, double angka2){
    double hasilBagi = angka1/angka2;
    hasil.value = hasilBagi;
    Get.snackbar("hasil bagi",
     "hasilnya ${hasilBagi}",
     snackPosition: SnackPosition.BOTTOM);        
  }
}