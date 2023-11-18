import 'package:flutter/material.dart';
import 'package:latihan_2/data_wisata.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.detailWisata});

  DataWisata detailWisata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
      ),
    );
  }
}
