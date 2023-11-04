import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://www.nativeindonesia.com/foto/farmhouse-lembang-bandung/farm-house-lembang-Bandung.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const Padding(
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(100),
                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                            'https://www.nativeindonesia.com/foto/farmhouse-lembang-bandung/tempat-instagramable-di-farmhouse.jpg'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(100),
                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                            'https://www.nativeindonesia.com/foto/2017/08/farmhouse-bandung-lembang-1.jpg'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(100),
                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                            'https://www.nativeindonesia.com/foto/farmhouse-lembang-bandung/tempat-instagramable-di-farmhouse.jpg'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(100),
                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                            'https://www.nativeindonesia.com/foto/2017/08/farmhouse-bandung-lembang-1.jpg'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
