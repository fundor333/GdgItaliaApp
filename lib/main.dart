import 'package:flutter/material.dart';
import 'package:gdg_italia_app/home.dart';
import 'package:gdg_italia_app/style.dart';

void main() => runApp(App());

class GdGItalia extends MaterialApp {
  final title = 'GdG Italia App';

  final debugShowCheckedModeBanner = false;

  final theme = ThemeData(
      brightness: GDGItaliaAppTheme.brightness,
      primaryColor: GDGItaliaAppTheme.primaryColor,
      accentColor: GDGItaliaAppTheme.accentColor,

      // Define the default Font Family
      fontFamily: GDGItaliaAppTheme.fontFamily,

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline: GDGItaliaAppTheme.headline,
        title: GDGItaliaAppTheme.title,
        body1: GDGItaliaAppTheme.body1,
      ),
      cardTheme: CardTheme(
        color: GDGItaliaAppTheme.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ));

  final home = Home();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GdGItalia();
  }
}
