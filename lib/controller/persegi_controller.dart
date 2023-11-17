import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;
  final hsl = "".obs;

  void hitungluas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi = $hitung";
  }

  void hitungkeliling(){
    int htg = sisi*4;
    hasil.value = "Hasil Perhitugan Keliling dari $sisi = $htg";
  }
}