import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungluas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi = $hitung";
    color.value = Colors.black;
  }

  void hitungkeliling(){
    int htg = sisi*4;
    hasil.value = "Keliling Persegi adalah $htg";
    color.value = Colors.black;
  }
}