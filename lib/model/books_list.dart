class Book {
  final String title;
  final String author;
  final String imageUrl;

  Book({required this.title, required this.author, required this.imageUrl});
}

var bookList = [
  Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      imageUrl: 'https://picsum.photos/200/300'),
  Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      imageUrl: 'https://picsum.photos/200/300'),
  Book(
      title: '1984',
      author: 'George Orwell',
      imageUrl: 'https://picsum.photos/200/300'),
];
