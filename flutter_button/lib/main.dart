import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String? nama;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => print('Elevated Button'),
                child: const Text('Kirim Data'),
              ),
              TextButton(
                onPressed: () {
                  print('Text Button');
                },
                child: const Text('Kirim Data'),
              ),
              OutlinedButton(
                onPressed: () {
                  print('Outline Button');
                },
                child: const Text('Kirim Data'),
              ),
              IconButton(
                onPressed: () {
                  print('Icon Button');
                },
                icon: const Icon(
                  Icons.date_range,
                  color: Colors.blue,
                ),
                tooltip: 'Tombol Icon nih!',
              ),
              DropdownButton(
                hint: Text('Pilih Nama Anda..'),
                value: nama,
                items: const [
                  DropdownMenuItem(
                    value: 'Safira',
                    child: Text('Safira'),
                  ),
                  DropdownMenuItem(
                    value: 'Arkandi',
                    child: Text('Arkandi'),
                  ),
                  DropdownMenuItem(
                    value: 'Hakim',
                    child: Text('Hakim'),
                  ),
                  DropdownMenuItem(
                    value: 'Gilang',
                    child: Text('Gilang'),
                  ),
                  DropdownMenuItem(
                    value: 'Aly',
                    child: Text('Aly'),
                  ),
                  DropdownMenuItem(
                    value: 'Elya',
                    child: Text('Elya'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    nama = value;
                    print('Nama yang kepilih adalah $nama');
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void hitung() => 10 * 8;
}
