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
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Judul'),
                Text('Sub Judul'),
                Icon(Icons.done),
                Container(
                  // alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    // shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-15, -15),
                        color: Colors.red,
                        blurRadius: 10,
                        spreadRadius: 5,
                        blurStyle: BlurStyle.solid,
                      ),
                    ],
                    border: Border.all(
                      width: 5,
                      color: Colors.blue,
                    ),
                    // borderRadius: BorderRadius.circular(20),
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  // padding: EdgeInsets.all(50),
                  // padding: EdgeInsets.only(top: 50, left: 20, right: 0, bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                  margin: const EdgeInsets.all(100),
                  // width: 200,
                  // height: 500,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Udin'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
