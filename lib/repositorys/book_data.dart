import '../models/book_model.dart';

List<BookModel> books = [
  ...List.generate(
      20,
      (index) => BookModel(
          title: "Title $index",
          description: "description:$index",
          img: "https://picsum.photos",
          id: index))
];
