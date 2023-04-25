import 'package:flutter/material.dart';
import 'package:submissoin_bfp/model/books_list.dart';

import '../details/book_details.dart';

class BookListScreen extends StatelessWidget {
  final String mail;

  const BookListScreen({super.key, required this.mail});

  @override
  Widget build(BuildContext context) {
    var books = bookList;
    return Scaffold(
      appBar: AppBar(
        title: Text('selamat membaca, $mail'),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final Book books = bookList[index];
          return Card(
              child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(book: books),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  books.imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(books.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 4),
                      Text(books.author, style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
