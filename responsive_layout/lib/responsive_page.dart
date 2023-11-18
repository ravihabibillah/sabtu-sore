import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return ListView(
            children: customContainer(),
          );
        } else if (constraints.maxWidth < 900) {
          return GridView.count(
            crossAxisCount: 2,
            children: customContainer(),
          );
        } else {
          return GridView.count(
            crossAxisCount: 6,
            children: customContainer(),
          );
        }
      }),
    );
  }

  List<Widget> customContainer() {
    return List<Widget>.generate(20, (index) {
      return Container(
        height: 300,
        color: Colors.green,
        margin: EdgeInsets.all(16),
      );
    });
  }
}
