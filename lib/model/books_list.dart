class Book {
  final String title;
  final String author;
  final String imageUrl;
  final String description;

  Book(
      {required this.title,
      required this.author,
      required this.imageUrl,
      required this.description});
}

var bookList = [
  Book(
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    imageUrl: 'https://picsum.photos/200/300',
    description:
        'The Great Gatsby is a novel by American author F. Scott Fitzgerald. First published by Scribner\'s in April 1925, it is set in Long Island\'s North Shore and New York City during the summer of 1922.',
  ),
  Book(
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    imageUrl: 'https://picsum.photos/200/300',
    description:
        'To Kill a Mockingbird is a novel by the American author Harper Lee. It was published in 1960 and has become a classic of modern American literature. The plot and characters are loosely based on the author\'s observations of her family, her neighbors and an event that occurred near her hometown of Monroeville, Alabama, in 1936, when she was 10 years old.',
  ),
  Book(
    title: '1984',
    author: 'George Orwell',
    imageUrl: 'https://picsum.photos/200/300',
    description:
        '1984 is a dystopian social science fiction novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell\'s ninth and final book completed in his lifetime.',
  ),
];
