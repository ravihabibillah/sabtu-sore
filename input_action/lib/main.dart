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
  // var nama = '';
  var _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextField(
            controller: _controller,
            // onChanged: (value) {
            //   setState(() {
            //     nama = value;
            //   });

            //   print('Nama: $nama');
            // },

            onSubmitted: (value) {
              // setState(() {
              //   nama = value;
              // });

              print('Nama: ${_controller.text}');
            },
          ),
        ),
      ),
    );
  }
}
