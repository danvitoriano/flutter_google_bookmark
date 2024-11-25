import 'package:flutter_google_bookmark/models/google_book.dart';

class PersonalBook {
  int? id;
  GoogleBook googleBook;
  String dayStarted;
  String dayFinished;
  String comments;

  PersonalBook({
    this.id,
    required this.googleBook,
    required this.dayStarted,
    required this.dayFinished,
    required this.comments,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'googleBook': googleBook.toMap(),
      'dayStarted': dayStarted,
      'dayFinished': dayFinished,
      'comments': comments,
    };
  }

}