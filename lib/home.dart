import 'package:flutter/material.dart';


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
  Home() : super();

  final String title = "Flutter Bottom Tab demo";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    TabScreen(Colors.green),
    TabScreen(Colors.orange),
    TabScreen(Colors.blue)
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Gdg"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text("Eventi"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("Info"),
          )
        ],
      ),
    );
  }
}
