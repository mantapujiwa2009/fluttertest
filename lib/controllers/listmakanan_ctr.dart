import 'package:fluttertest/models/makanan_model.dart';
import 'package:get/get.dart';

class ListmakananCtr extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(namaMakanan: "Soto",
    hargaMakanan: "15.000", 
    detailMakanan: "Soto (dikenal juga dengan beberapa nama lokal seperti sroto, sauto, tauto, atau coto) adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran. Daging yang paling sering digunakan adalah daging sapi dan ayam, tetapi ada pula yang menggunakan daging babi, kuda atau kambing. Berbagai daerah di Indonesia memiliki soto khas daerahnya masing-masing dengan komposisi yang berbeda-beda, misalnya Soto Madura, Soto Kediri, Soto Pemalang, Soto Lamongan, Soto Jepara, Soto Bening Solo, Soto Semarang, Soto Kudus, Soto Kraksaan, Soto Betawi, Soto Golak Wonosobo, Soto Padang, Soto Bandung, Sauto Tegal, Tauto Pekalongan, Sroto Sokaraja, Sroto Kriyik, Sroto Bancar, Soto Banjar, Soto Medan, Coto Makassar, dan Coto Kuda Jeneponto. Soto juga diberi nama sesuai dengan bahan utamanya, misalnya Soto Ayam, Soto Babat, atau Soto Kambing. Ada pula soto yang dibuat dari daging kaki sapi yang disebut dengan soto Sekengkel.",
    fotoMakanan: "https://thumb.wikimedia.org/wikipedia/commons/thumb/6/69/Soto_Ayam_Savoy_Homann_Hotel.JPG/330px-Soto_Ayam_Savoy_Homann_Hotel.JPG?utm_source=id.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"),
    MakananModel(namaMakanan: "Sate", 
    hargaMakanan: "25.000", 
    detailMakanan: "Sate (bahasa Jawa: ꦱꦠꦺ, translit. sate, KBBI: satai) adalah makanan yang terbuat dari daging yang dipotong kecil dan ditusuk sedemikian rupa dengan tusuk lidi tulang dari daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. Sate disajikan dengan berbagai macam bumbu yang bergantung pada variasi resep sate. Daging yang dijadikan sate antara lain daging ayam, kambing, domba, sapi, babi, kelinci, kuda, dan lain-lain.",
    fotoMakanan: "https://thumb.wikimedia.org/wikipedia/commons/thumb/a/ad/Sate_Ponorogo.jpg/250px-Sate_Ponorogo.jpg?utm_source=id.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"),
    MakananModel(namaMakanan: "Gudeg", 
    hargaMakanan: "20.000", 
    detailMakanan: "Gudeg (bahasa Jawa: [Gudhêg] Galat: {{Lang}}: text has italic markup (bantuan)) adalah hidangan khas Daerah Istimewa Yogyakarta dan Jawa Tengah, yang terbuat dari nangka muda (gori) yang dimasak dengan santan. Cita rasa dominan pada masakan ini adalah manis.",
    fotoMakanan: "https://thumb.wikimedia.org/wikipedia/commons/thumb/3/31/Nasi_Gudeg.jpg/250px-Nasi_Gudeg.jpg?utm_source=id.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"),
    MakananModel(namaMakanan: "Gulai", 
    hargaMakanan: "27.000", 
    detailMakanan: "Gulai adalah hidangan berkuah berbumbu yang umum ditemukan dalam tradisi kuliner Indonesia,Malaysia,serta berbagai wilayah lain di Asia Tenggara Maritim, termasuk Brunei,Singapura dan Thailand selatan. Hidangan ini memiliki keterkaitan erat dengan masakan Melayu dan masakan Minangkabau,[15] serta dicirikan oleh kuah kaya rempah dan harum yang dibuat dari santan dan campuran bumbu halus, umumnya meliputi kunyit, ketumbar, cabai, dan berbagai rempah aromatik lainnya. Gulai lazim diolah menggunakan daging, ikan, jeroan, atau sayuran, dan umumnya disantap bersama nasi",
    fotoMakanan: "https://thumb.wikimedia.org/wikipedia/commons/thumb/3/3b/Gulai_ayam3.jpg/250px-Gulai_ayam3.jpg?utm_source=id.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"),
    MakananModel(namaMakanan: "Sei sapi", 
    hargaMakanan: "35.000", 
    detailMakanan: "Sei atau daging sei adalah hidangan daging asap yang berasal dari Provinsi Nusa Tenggara Timur. Dalam bahasa Rote, “sei” artinya daging yang disayat dalam ukuran kecil memanjang, lalu diasapi dengan bara api hingga matang.Hidangan ini terbuat dari daging yang dimasak dengan cara dipanaskan menggunakan asap panas yang berasal dari kayu bakar.",
    fotoMakanan: "https://thumb.wikimedia.org/wikipedia/commons/thumb/5/55/Se%27i_Babi_2.JPG/250px-Se%27i_Babi_2.JPG?utm_source=id.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"),
  ];
}