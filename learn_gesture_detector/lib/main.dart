// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Judul Aplikasi
      title: 'Gesture Detector',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double ukuranKotak = 150.0;

  int jumlahTap = 0;
  int jumlahDoubleTap = 0;
  int jumlahLongPress = 0;

  double posisiX = 0;
  double posisiY = 0;

  void centered(BuildContext context) {
    posisiX = (MediaQuery.of(context).size.width / 2) - (ukuranKotak / 2);
    posisiY = (MediaQuery.of(context).size.height / 2) - (ukuranKotak / 2) - 70;

    setState(() {
      posisiX = posisiX;
      posisiY = posisiY;
    });
  }

  void randomized() {
    // Inisialisasi fungsi random bawaan
    var random = Random();

    // untuk bikin nilai random x dengan batasan
    // seukuran lebar layar dikurangi ukuran kotak
    var randomX = random
        .nextInt((MediaQuery.of(context).size.width - (ukuranKotak)).toInt());

    // untuk bikin nilai random y dengan batasan
    // seukuran tinggi layar dikurangi ukuran kotak
    var randomY = random
        .nextInt((MediaQuery.of(context).size.height - (ukuranKotak)).toInt());

    // untuk nge set posisi X dan Y sesuai dengan hasil nilai random
    posisiX = randomX.toDouble();
    posisiY = randomY.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    if (posisiX == 0) {
      centered(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: posisiY,
            left: posisiX,
            child: GestureDetector(
              onTap: () {
                randomized();
                setState(() {
                  jumlahTap = jumlahTap + 1;
                  // jumlahTap++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  jumlahDoubleTap = jumlahDoubleTap + 1;
                });
              },
              onLongPress: () {
                setState(() {
                  jumlahLongPress = jumlahLongPress + 1;
                });
              },
              // Drag secara Vertikal
              // onVerticalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     var delta = details.delta.dy;
              //     // posisiY += delta;
              //     posisiY = posisiY + delta;
              //   });
              // },

              // Drag secara Horizontal
              // onHorizontalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     var delta = details.delta.dx;

              //     posisiX = posisiX + delta;
              //   });
              // },

              // Untuk Drag ke semua arah
              onPanUpdate: (details) {
                setState(() {
                  posisiX = posisiX + details.delta.dx;
                  posisiY = posisiY + details.delta.dy;
                });
              },

              child: Container(
                width: ukuranKotak,
                height: ukuranKotak,
                color: Colors.lightBlue,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.red.shade300,
        child: Text(
          'Tap: $jumlahTap - Double Tap: $jumlahDoubleTap - Long Press: $jumlahLongPress',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
