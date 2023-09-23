import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Farm House Lembang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    )),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.date_range),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Open Everyday'),
                      ],
                    ),
                    // SizedBox(
                    //   width: 16,
                    // ),
                    Column(
                      children: [
                        Icon(Icons.date_range),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Open Everyday'),
                      ],
                    ),
                    //  SizedBox(
                    //   width: 16,
                    // ),
                    Column(
                      children: [
                        Icon(Icons.date_range),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Open Everyday'),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
