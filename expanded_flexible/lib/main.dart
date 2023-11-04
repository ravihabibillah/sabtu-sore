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
          body: Column(
        children: [
          Row(
            children: [
              expandedWidget(),
              flexibleWidget(),
            ],
          ),
          Row(
            children: [
              expandedWidget(),
              expandedWidget(),
            ],
          ),
          Row(
            children: [
              flexibleWidget(),
              expandedWidget(),
            ],
          ),
          Row(
            children: [
              flexibleWidget(),
              flexibleWidget(),
            ],
          ),

          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.yellow,
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     color: Colors.green,
          //   ),
          // )
        ],
      )),
    );
  }

  expandedWidget() {
    return Expanded(
      // flex: 2,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Text('Ini Expanded'),
        color: Colors.cyan,
      ),
    );
  }

  flexibleWidget() {
    return Flexible(
        child: Container(
      padding: EdgeInsets.all(16),
      child: Text('Ini Flexible'),
      color: Colors.amber,
    ));
  }
}
