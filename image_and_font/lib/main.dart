import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'Oswald',
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.network(
              'https://akcdn.detik.net.id/community/media/visual/2022/04/26/pesona-tugu-jogja-lewat-lukisan-cahaya-3_169.jpeg?w=700&q=90',
              width: 300,
              height: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          Image.asset(
            'assets/one_piece.png',
            width: 300,
          ),
          Text(
            "Terserah",
            style: GoogleFonts.lato(),
          ),
          Text("Terserah 2")
        ],
      ),
    );
  }
}
