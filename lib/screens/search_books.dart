import 'package:flutter/material.dart';
import 'package:flutter_google_bookmark/screens/components/display_text.dart';
import 'package:flutter_google_bookmark/theme.dart';

class SearchBooks extends StatefulWidget {
  const SearchBooks({super.key});

  @override
  State<SearchBooks> createState() => _SearchBooksState();
}

class _SearchBooksState extends State<SearchBooks> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: Scaffold(
        appBar: AppBar(backgroundColor: AppColors.black),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: DisplayText("Adicionar Livro"),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: TextFormField(
                    onChanged: (value) {},
                    decoration: InputDecorationProperties.newInputDecoration(
                        "Procure por título/autor(a)",
                        "Busca",
                        const Icon(Icons.search)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
