import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PsgPjg extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungluas(){
    int hitung = panjang * lebar;
    hasil.value = "Luas Persegi Panjang Adalah $hitung";
    color.value = Colors.black;
  }

  void hitungkeliling(){
    int htg = (panjang + lebar) * 2;
    hasil.value = "Keliling Persegi Panjang Adalah $htg";
    color.value = Colors.black;
  }
}