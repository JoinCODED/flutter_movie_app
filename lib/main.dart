import 'package:flutter/material.dart';
import 'package:movie_app/movie.dart';

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
    Movie(name: 'Toy Story', imgPath: 'assets/toy_story.jpeg', rating: 4),
    Movie(name: 'Spider Man', imgPath: 'assets/spider_man.jpeg', rating: 5),
    Movie(name: 'Inside out', imgPath: 'assets/inside_out.jpeg', rating: 0.2),
    Movie(name: 'The LEGO Movie', imgPath: 'assets/lego.jpeg', rating: 0.2),
    Movie(name: 'The Lion King', imgPath: 'assets/lion_king.jpeg', rating: 0.2),
    Movie(name: 'Frozen', imgPath: 'assets/frozen.jpeg', rating: 0.2),
    Movie(name: 'Shrek', imgPath: 'assets/shrek.jpeg', rating: 0.2),
    Movie(name: 'BIG HERO', imgPath: 'assets/big_hero.jpeg', rating: 0.2),
    Movie(name: 'ICE AGE', imgPath: 'assets/ice_age.jpeg', rating: 0.2),
    Movie(name: 'BRAVE', imgPath: 'assets/brave.jpeg', rating: 0.2),
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
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      movies[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    movies[index].imgPath,
                    width: 125,
                    height: 125,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
