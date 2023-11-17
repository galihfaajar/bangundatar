import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  double jari = 0;
  double phi = 3.14;
  final hasil = "".obs;
  final color = Rx<Color>(Colors.black);

  void hitungluas(){
    double hitung = phi * jari * jari;
    hasil.value = "Luas Lingkaran adalah $hitung";
    color.value = Colors.black;
  }

  void hitungkeliling(){
    double htg = 2 * phi *jari ;
    hasil.value = "Keliling Lingkaran Adalah $htg";
    color.value = Colors.black;
  }
}