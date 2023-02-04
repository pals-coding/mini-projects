import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  int current_index = 0;
  final List<Widget> pages = [
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  void onTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: pages[current_index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        backgroundColor: Colors.white,
        color: Colors.orange,
        onTap: onTapped,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.settings, size: 30),
        ],
      ),
    );
  }
}
