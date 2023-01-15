part 'bookStores.dart';

class BookInfo {
  String bookId;
  String bookImage;
  String bookName;
  String bookAuthor;
  String bookSummary;
  String bookPublishedYear;
  String bookPageNumber;
  String bookCategory;
  List<BookStores> bookStores;

  BookInfo({this.bookId = '',
    this.bookImage = '',
    this.bookName = '',
    this.bookAuthor = '',
    this.bookSummary = '',
    this.bookPublishedYear = '',
    this.bookPageNumber = '',
    this.bookCategory = '',
    this.bookStores = const[],
  });

  factory BookInfo.fromJson(Map<String, dynamic> json) {
    final bookStores = <BookStores>[];

    if (json['bookStores'] != null) {
      json['bookStores'].forEach((v) {
        bookStores.add(BookStores.fromJson(v));
      });
    }

    return BookInfo(
      bookId: json['bookId'] ?? '',
      bookImage: json['bookImage'] ?? '',
      bookName: json['bookName'] ?? '',
      bookAuthor: json['bookAuthor'] ?? '',
      bookSummary: json['bookSummary'] ?? '',
      bookPublishedYear: json['bookPublishedYear'] ?? '',
      bookPageNumber: json['bookPageNumber'] ?? '',
      bookCategory: json['bookCategory'] ?? '',
      bookStores: bookStores,

    );
  }
}