import 'dart:convert';

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

    PersonalBook.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        dayFinished = map["dayFinished"],
        dayStarted = map["dayStarted"],
        comments = map["comments"],
        googleBook = GoogleBook.fromJson(json.decode(map["googleBook"]));

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