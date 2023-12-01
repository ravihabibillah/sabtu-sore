import 'package:flutter/material.dart';
import 'package:latihan_2/data_wisata.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.detailWisata});

  DataWisata detailWisata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return DetailMobilePage(detailWisata: detailWisata);
        } else {
          return DetailWebPage(detailWisata: detailWisata);
        }
      },
    ));
  }
}

class DetailMobilePage extends StatelessWidget {
  DetailMobilePage({super.key, required this.detailWisata});
  DataWisata detailWisata;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Hero(
            tag: detailWisata.thumbnail,
            child: Image.asset(
              detailWisata.thumbnail,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(detailWisata.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    )),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.date_range),
                        SizedBox(
                          height: 4,
                        ),
                        Text(detailWisata.openDays),
                      ],
                    ),
                    // SizedBox(
                    //   width: 16,
                    // ),
                    Column(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(
                          height: 4,
                        ),
                        Text(detailWisata.openHours),
                      ],
                    ),
                    //  SizedBox(
                    //   width: 16,
                    // ),
                    Column(
                      children: [
                        Icon(Icons.paid),
                        SizedBox(
                          height: 4,
                        ),
                        Text(detailWisata.price),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  detailWisata.description,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: detailWisata.imageUrls.length,
              itemBuilder: (context, index) {
                var imageUrl = detailWisata.imageUrls[index];
                return Container(
                  padding: const EdgeInsets.all(8),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(100),
                  // ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(imageUrl),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  DetailWebPage({super.key, required this.detailWisata});
  DataWisata detailWisata;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(detailWisata.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                )),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // GAMBAR
              Expanded(
                child: Column(
                  children: [
                    Hero(
                      tag: detailWisata.thumbnail,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          detailWisata.thumbnail,
                          width: double.infinity,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: detailWisata.imageUrls.length,
                        itemBuilder: (context, index) {
                          var imageUrl = detailWisata.imageUrls[index];
                          return Container(
                            padding: const EdgeInsets.all(8),
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(100),
                            // ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(imageUrl),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              // DESKRIPSI
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              detailWisata.location,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.date_range),
                              SizedBox(
                                width: 4,
                              ),
                              Text(detailWisata.openDays),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.schedule),
                              SizedBox(
                                width: 4,
                              ),
                              Text(detailWisata.openHours),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.paid),
                              SizedBox(
                                width: 4,
                              ),
                              Text(detailWisata.price),
                            ],
                          ),
                          Text(detailWisata.description)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
