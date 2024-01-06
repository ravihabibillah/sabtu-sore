import 'dart:convert';

class Article {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> article) => Article(
        author: article['author'],
        title: article["title"],
        description: article["title"],
        url: article["url"],
        urlToImage: article["urlToImage"],
        publishedAt: article["publishedAt"],
        content: article["content"],
      );
}

List<Article> parseArticles(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  print('Hasil Parsed : $parsed');
  return parsed.map((json) => Article.fromJson(json)).toList();

  // List<Article> example = [
  //   Article(
  //       author: "Andina Librianty",
  //       title: "Galaxy Note 20 Ultra LTE Muncul di Geekbench - Liputan6.com",
  //       description:
  //           "Samsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.",
  //       url:
  //           "https://www.liputan6.com/tekno/read/4323034/galaxy-note-20-ultra-lte-muncul-di-geekbench",
  //       urlToImage:
  //           "https://cdn0-production-images-kly.akamaized.net/kwYrjSBiS30aiuWq0gxsB1szMC4=/0x0:0x0/673x379/filters:quality(75):strip_icc():format(jpeg):watermark(kly-media-production/assets/images/watermarks/liputan6/watermark-gray-landscape-new.png,573,20,0)/kly-media-production/medias/3113243/original/050107700_1587977893-IMG_20200427_154636-01.jpeg",
  //       publishedAt: "2020-08-05T08:30:05Z",
  //       content:
  //           "Liputan6.com, JakartaSamsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.\r\nDilansir GSM Arena, Rabu (5/8/2020), b… [+571 chars]"),
  //   Article(
  //       author: "Andina Librianty",
  //       title: "Galaxy Note 20 Ultra LTE Muncul di Geekbench - Liputan6.com",
  //       description:
  //           "Samsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.",
  //       url:
  //           "https://www.liputan6.com/tekno/read/4323034/galaxy-note-20-ultra-lte-muncul-di-geekbench",
  //       urlToImage:
  //           "https://cdn0-production-images-kly.akamaized.net/kwYrjSBiS30aiuWq0gxsB1szMC4=/0x0:0x0/673x379/filters:quality(75):strip_icc():format(jpeg):watermark(kly-media-production/assets/images/watermarks/liputan6/watermark-gray-landscape-new.png,573,20,0)/kly-media-production/medias/3113243/original/050107700_1587977893-IMG_20200427_154636-01.jpeg",
  //       publishedAt: "2020-08-05T08:30:05Z",
  //       content:
  //           "Liputan6.com, JakartaSamsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.\r\nDilansir GSM Arena, Rabu (5/8/2020), b… [+571 chars]"),
  //   Article(
  //       author: "Andina Librianty",
  //       title: "Galaxy Note 20 Ultra LTE Muncul di Geekbench - Liputan6.com",
  //       description:
  //           "Samsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.",
  //       url:
  //           "https://www.liputan6.com/tekno/read/4323034/galaxy-note-20-ultra-lte-muncul-di-geekbench",
  //       urlToImage:
  //           "https://cdn0-production-images-kly.akamaized.net/kwYrjSBiS30aiuWq0gxsB1szMC4=/0x0:0x0/673x379/filters:quality(75):strip_icc():format(jpeg):watermark(kly-media-production/assets/images/watermarks/liputan6/watermark-gray-landscape-new.png,573,20,0)/kly-media-production/medias/3113243/original/050107700_1587977893-IMG_20200427_154636-01.jpeg",
  //       publishedAt: "2020-08-05T08:30:05Z",
  //       content:
  //           "Liputan6.com, JakartaSamsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.\r\nDilansir GSM Arena, Rabu (5/8/2020), b… [+571 chars]"),
  //   Article(
  //       author: "Andina Librianty",
  //       title: "Galaxy Note 20 Ultra LTE Muncul di Geekbench - Liputan6.com",
  //       description:
  //           "Samsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.",
  //       url:
  //           "https://www.liputan6.com/tekno/read/4323034/galaxy-note-20-ultra-lte-muncul-di-geekbench",
  //       urlToImage:
  //           "https://cdn0-production-images-kly.akamaized.net/kwYrjSBiS30aiuWq0gxsB1szMC4=/0x0:0x0/673x379/filters:quality(75):strip_icc():format(jpeg):watermark(kly-media-production/assets/images/watermarks/liputan6/watermark-gray-landscape-new.png,573,20,0)/kly-media-production/medias/3113243/original/050107700_1587977893-IMG_20200427_154636-01.jpeg",
  //       publishedAt: "2020-08-05T08:30:05Z",
  //       content:
  //           "Liputan6.com, JakartaSamsung sedang menyiapkan seri flagship Galaxy Note 20. Informasi tentang smartphone tersebut juga sudah banyak beredar di ranah internet.\r\nDilansir GSM Arena, Rabu (5/8/2020), b… [+571 chars]")
  // ];
}
