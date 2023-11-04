import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  List<int> listAngka = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<Color> listWarna = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.grey,
    Colors.black,
    Colors.amber,
    Colors.brown,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // height: 200,
            // child: ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: listWarna.map((warna) {
            //     return Container(
            //       height: 200,
            //       width: 200,
            //       color: warna,
            //       child: Center(child: Text("ABC")),
            //     );
            //   }).toList(),
            // ),

            // LISTVIEW BUILDER
            // child: ListView.builder(
            //   itemBuilder: (context, index) {
            //     return Container(
            //       height: 200,
            //       width: 200,
            //       color: listWarna[index],
            //       child: Center(child: Text("${listAngka[index]}")),
            //     );
            //   },
            //   itemCount: listAngka.length,
            // ),

            // LISTVIEW SEPARATED
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  color: listWarna[index],
                  child: Center(child: Text("${listAngka[index]}")),
                );
              },
              itemCount: listAngka.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 12,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
