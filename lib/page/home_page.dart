import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
        style: TextStyle(
          color: Colors.black
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset:"assets/persegi.jpg", title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset:"assets/persegipanjang.jpg", title: "Persegi Panjang")),
            ],
          ), Row(
            children: [
              Expanded(child: CustomMenu(imageAsset:"assets/persegi.jpg", title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset:"assets/persegipanjang.jpg", title: "Persegi Panjang")),
            ],
          ), Row(
            children: [
              Expanded(child: CustomMenu(imageAsset:"assets/persegi.jpg", title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset:"assets/persegipanjang.jpg", title: "Persegi Panjang")),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset:"assets/lingkaran.jpg", title: "Lingkaran"),
              CustomMenu(imageAsset:"assets/segitiga.jpg", title: "Segitiga"),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset:"assets/segitiga.jpg", title: "Segitiga"),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 484),
            Text(title, style: TextStyle(color: Colors.black),
            ),
          ],
        ),
    );
  }
}
