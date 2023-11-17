import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Page",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegi.jpg", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Persegi",
              style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus"
                " keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°).",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: TextFormField(
                    onChanged: (value){
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Sisi",
                        hintText: "Masukkan Sisi",
                        hintStyle: TextStyle(color: Colors.blue),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ElevatedButton(onPressed: (){
                  _persegiController.hitungluas();
                },
                  child: Text("Hitung Luas",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ElevatedButton(onPressed: (){
                  _persegiController.hitungkeliling();
                },
                  child: Text("Hitung Keliling",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green),
                  ),
                ),
              ),
            ],
          ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height:180 ,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [
                Center(child: Text("Hasil")),
                Center(child: Text("")),
                Center(child: Text("")),
                Obx(() => Text(
                  _persegiController.hasil.value,
                  style: TextStyle(color: _persegiController.color.value),
                )),
                Center(child: Text("")),
                Center(child: Text("")),
                Center(child: Text("===================")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
