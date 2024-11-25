import 'package:flutter/material.dart';
import 'package:flutter_google_bookmark/models/google_book.dart';
import 'package:flutter_google_bookmark/theme.dart';

class Entry extends StatelessWidget {
  const Entry({super.key, required this.book});

  final GoogleBook book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.network(
              book.thumbnailLink,
              height: 126,
              width: 86,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    book.title,
                    style: EntryDecorationProperties.displayText,
                  ),
                ),
                Text(
                  book.authors,
                  style: EntryDecorationProperties.authorText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
