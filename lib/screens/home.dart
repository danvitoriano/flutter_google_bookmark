
import 'package:flutter/material.dart';
import 'package:flutter_google_bookmark/screens/components/display_text.dart';
import 'package:flutter_google_bookmark/screens/components/floating.button.dart';
import 'package:flutter_google_bookmark/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: _EmptyHome(),
        ),
      ),
    ));
  }
}

class _EmptyHome extends StatelessWidget {
  const _EmptyHome();

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: DisplayText("Google Bookmark"),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Image.asset("assets/images/welcome.png"),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Seu Google Bookmark está vazio!",
          style: TextStyle(fontSize: 36, color: AppColors.lightOrange),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 8.0),
        child: Text(
          "Vamos aprender algo novo?",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      FloatingButton(onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Text("search books")));
      }),
    ]);
  }
}