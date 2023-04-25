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
    title: 'Atomic Habbits',
    author: 'James Clear',
    imageUrl: 'images/atomicHabbits.jpeg',
    description:
        'No matter your goals, Atomic Habits offers a proven framework for improving—every day. James Clear, one of the world\'s leading experts on habit formation, reveals practical strategies that will teach you exactly how to form good habits, bad ones, and master the tiny behaviors that lead to remarkable results.',
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
