import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget(
    judul: 'Latihan',
  ));
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key, this.judul});

  String? judul;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Latihan',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
