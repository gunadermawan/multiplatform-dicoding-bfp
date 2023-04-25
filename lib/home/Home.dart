import 'package:flutter/material.dart';
import 'package:submissoin_bfp/model/books_list.dart';


class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var books = bookList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

      itemCount: books.length,

      itemBuilder: (context, index) {
        final Book books = bookList[index];
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                books.imageUrl,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
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
                    Text(books.author,
                        style: const TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),);
  }
}
