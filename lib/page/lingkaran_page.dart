import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});

  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lingkaran Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/lingkaran.jpg", height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Lingkaran",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lingkaran adalah tempat kedudukan titik-titik yang berjarak sama dengan satu titik tertentu.  Yang dimaksud titik tertentu adalah titik pusat lingkaran, sedangkan jarak yang sama adalah jari-jari lingkaran. Nah, sebelum kita membahas mengenai keliling dan luas lingkaran, Sobat Pintar perlu tahu terlebih dahulu mengenai unsur-unsur dari lingkaran",
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
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      _lingkaranController.jari = double.parse(value);
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Jari-Jari",
                        hintText: "Masukkan Jari-Jari",
                        hintStyle: TextStyle(color: Colors.blue),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.blue),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          _lingkaranController.hitungluas();
                        },
                        child: Text(
                          "Hitung Luas",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          _lingkaranController.hitungkeliling();
                        },
                        child: Text(
                          "Hitung Keliling",
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
                  _lingkaranController.hasil.value,
                  style: TextStyle(color: _lingkaranController.color.value),
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
