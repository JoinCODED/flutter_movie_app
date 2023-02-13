import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moive App',
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List movies = [
    'Toy Story',
    'Spider Man',
    'Inside out',
    'The LEGO Movie',
    'The Lion King',
    'Frozen',
    'Shrek',
    'BIG HERO',
    'ICE AGE',
    'BRAVE',
  ];

  List imgPaths = [
    'assets/toy_story.jpeg',
    'assets/spider_man.jpeg',
    'assets/inside_out.jpeg',
    'assets/lego.jpeg',
    'assets/lion_king.jpeg',
    'assets/frozen.jpeg',
    'assets/shrek.jpeg',
    'assets/big_hero.jpeg',
    'assets/ice_age.jpeg',
    'assets/brave.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Movie APP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // TODO: #1 Create movie tile
        body: null);
  }
}
