import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless dan Stateful'),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.close),
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
        body: const Center(
          child: TextMembesar(),
        ),
      ),
    );
  }
}

class WidgetKu extends StatelessWidget {
  const WidgetKu({super.key, required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(nama),
    );
  }
}

class TextMembesar extends StatefulWidget {
  const TextMembesar({super.key});

  @override
  State<TextMembesar> createState() => _TextMembesarState();
}

class _TextMembesarState extends State<TextMembesar> {
  double ukuranFont = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              ukuranFont = 32.0;
            });
          },
          child: const Text(
            'Perbesar',
          ),
        ),
        Text(
          'Hello World!',
          style: TextStyle(fontSize: ukuranFont),
        )
      ],
    );
  }
}
