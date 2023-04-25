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
    title: 'Buku Bodo Amat',
    author: 'Mark Manson',
    imageUrl: 'images/bodoAmat.png',
    description:
        'The Subtle Art of Not Giving a F*ck argues that individuals should seek to find meaning through what they find to be important and only engage in values that they can control. Values (such as popularity) that are not under a person\'s control, are, according to the book, bad values. Furthermore, individuals should strive to replace these uncontrollable values with things they have the capability to change, such as punctuality, honesty, or kindness. Manson further cautions against claiming certainty about knowledge that is out of ones grasp, especially in the case of attempting to leave a legacy. Meaning can be found, Manson claims, when one seeks to create joy in the moment for one\'s self and those around as opposed to being concerned with building a body of work as a legacy.',
  ),
  Book(
    title: 'Ga disukai',
    author: 'Ichiro Kashimi',
    imageUrl: 'images/gasuka.jpeg',
    description:
        '1984 is a dystopian social science fiction novel by English novelist George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell\'s ninth and final book completed in his lifetime.',
  ),
  Book(
    title: 'Filosofi Teras',
    author: 'Henry Manampiring',
    imageUrl: 'images/teras.jpeg',
    description:
        '“Manusia tidak memiliki kuasa untuk memiliki apapun yang dia mau, tetapi dia memiliki kuasa untuk tidak mengingini apa yang dia belum miliki, dan dengan gembira memaksimalkan apa yang dia terima.” - Henry Manampiring.',
  ),
];
