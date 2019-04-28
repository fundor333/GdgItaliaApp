import 'package:flutter/material.dart';

import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:gdg_italia_app/style.dart';

class TabScreen extends StatelessWidget {
  final Color color;

  TabScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

class Home extends StatefulWidget {
  final String title;

  Home(this.title) : super();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    TabScreen(Colors.white),
    TabScreen(Colors.white),
    TabScreen(Colors.white)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: tabs[currentTabIndex],
      // In Scaffold

      bottomNavigationBar: FlipBoxBar(
        selectedIndex: currentTabIndex,
        items: [
          FlipBarItem(
              icon: Icon(Icons.group),
              text: Text("GdG"),
              frontColor: GDGItaliaAppTheme.blueGoogle,
              backColor: GDGItaliaAppTheme.blueGoogle),
          FlipBarItem(
              icon: Icon(Icons.event),
              text: Text("Eventi"),
              frontColor: GDGItaliaAppTheme.yellowGoogle,
              backColor: GDGItaliaAppTheme.yellowGoogle),
          FlipBarItem(
              icon: Icon(Icons.info),
              text: Text("Info"),
              frontColor: GDGItaliaAppTheme.redGoogle,
              backColor: GDGItaliaAppTheme.redGoogle),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            currentTabIndex = newIndex;
          });
        },
      ),
    );
  }
}
