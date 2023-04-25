import 'package:flutter/material.dart';

import '../model/books_list.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 240,
            child: Image.asset(
              book.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(book.title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(book.author, style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 8),
                  Expanded(
                      child: Text(book.description,
                          style: const TextStyle(fontSize: 18))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
