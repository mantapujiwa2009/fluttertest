import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CnfrmregistrationCtr extends GetxController {
  late String nama;
  late String email;
  late String alamat;
  late String nomer;
  late String kelamin;

  @override
  void onInit(){
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];  
    email = arguments['email'];  
    nomer = arguments['nomer'];  
    alamat = arguments['alamat'];  
    kelamin = arguments['jenisKelamin'];  
  }
}