import 'package:flutter/cupertino.dart';
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
  var nyala = true;
  var jenisKelamin = '';
  var maem = false;
  var maemMalam = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
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
              Switch(
                value: nyala,
                onChanged: (value) {
                  setState(() {
                    nyala = value;
                  });

                  print(nyala == true ? 'Lampu Nyala' : 'Lampu Mati');
                },
              ),
              Switch.adaptive(
                value: nyala,
                onChanged: (value) {
                  setState(() {
                    nyala = value;
                  });

                  print(nyala == true ? 'Lampu Nyala' : 'Lampu Mati');
                },
              ),
              ListTile(
                onTap: () {},
                leading: Radio(
                  value: 'laki-laki',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                title: Text('Laki-laki'),
              ),
              CupertinoListTile(
                onTap: () {},
                leading: Radio.adaptive(
                  value: 'perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                title: Text('Perempuan'),
              ),
              ListTile(
                title: Text('Makan Siang'),
                trailing: Checkbox(
                  value: maem,
                  onChanged: (value) {
                    setState(() {
                      maem = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Makan Malam'),
                trailing: Checkbox.adaptive(
                  value: maemMalam,
                  onChanged: (value) {
                    setState(() {
                      maemMalam = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
