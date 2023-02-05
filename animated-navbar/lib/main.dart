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
      debugShowCheckedModeBanner: false,
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
        backgroundColor: const Color(0xFF9abb58),
        title: const Text("Animated Bottom Bar"),
      ),
      body: pages[current_index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        backgroundColor: Colors.white,
        color: const Color(0xFF9abb58),
        onTap: onTapped,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xFFfdfdfd),
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Color(0xFFfdfdfd),
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Color(0xFFfdfdfd),
          ),
        ],
      ),
    );
  }
}
