import 'package:book_catalog/catalog.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List Catalog = [
    Books(
        name: 'Mastering Dart',
        cover:
            'https://imgv2-2-f.scribdassets.com/img/word_document/272072698/original/432x574/3ab5926672/1617228257?v=1'),
    (
      name: 'Mobile Deep Learning with TersotFlow Lite, ML Kit',
      cover: 'https://learning.oreilly.com/library/cover/9781789611212/250w/'
    ),
    Books(
        name: 'Promblem Solirg Programing Concepts 9th Ed Spn',
        cover:
            'https://m.media-amazon.com/images/I/51cWL7EB++L._AC_UF894,1000_QL80_.jpg'),
    Books(
        name: 'Prototyping of User Interfaces for Mobile Applocation',
        cover:
            'https://media.springernature.com/full/springer-static/cover-hires/book/978-3-319-53210-3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Catalog'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: Catalog.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    Catalog[index].cover,
                    width: 200,
                    height: 120,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    Catalog[index].name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
