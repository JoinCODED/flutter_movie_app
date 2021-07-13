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
    Movie(name: 'Toy Story', imgPath: 'assets/toy_story.jpeg', rating: 8),
    Movie(name: 'Spider Man', imgPath: 'assets/spider_man.jpeg', rating: 5),
    Movie(name: 'Inside out', imgPath: 'assets/inside_out.jpeg', rating: 7),
    Movie(name: 'The LEGO Movie', imgPath: 'assets/lego.jpeg', rating: 5.5),
    Movie(name: 'The Lion King', imgPath: 'assets/lion_king.jpeg', rating: 9),
    Movie(name: 'Frozen', imgPath: 'assets/frozen.jpeg', rating: 4.5),
    Movie(name: 'Shrek', imgPath: 'assets/shrek.jpeg', rating: 8.5),
    Movie(name: 'BIG HERO', imgPath: 'assets/big_hero.jpeg', rating: 8),
    Movie(name: 'ICE AGE', imgPath: 'assets/ice_age.jpeg', rating: 7.5),
    Movie(name: 'BRAVE', imgPath: 'assets/brave.jpeg', rating: 7),
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
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          '${movies[index].name}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(height: 10),
                        Text(
                          'Rating: ${movies[index].rating}/10',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                            fontSize: 14,
                          ),
                        ),
                      ],
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
