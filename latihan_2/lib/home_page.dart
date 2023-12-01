import 'package:flutter/material.dart';
import 'package:latihan_2/data_wisata.dart';
import 'package:latihan_2/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Wisata'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const ListViewWisata();
        } else if (constraints.maxWidth < 1200) {
          return const GridViewWisata(
            crossAxisCount: 4,
          );
        } else {
          return const GridViewWisata(
            crossAxisCount: 6,
          );
        }
      }),
    );
  }
}

class ListViewWisata extends StatelessWidget {
  const ListViewWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listWisata.length,
        itemBuilder: (context, index) {
          var wisata = listWisata[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(
                  detailWisata: wisata,
                );
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: wisata.thumbnail,
                    child: Image.asset(
                      wisata.thumbnail,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wisata.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          wisata.location,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class GridViewWisata extends StatelessWidget {
  const GridViewWisata({super.key, required this.crossAxisCount});

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      children: listWisata.map((wisata) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(
                detailWisata: wisata,
              );
            }));
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Hero(
                    tag: wisata.thumbnail,
                    child: Image.asset(
                      wisata.thumbnail,
                      width: double.infinity,
                      // height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        wisata.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        wisata.location,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
