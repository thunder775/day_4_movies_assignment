import 'package:day_4_movies_assignment/movies.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: poster(),
  ));
}

// You are given json string of movies list (see file movies.dart)
String moviesList = MoviesList.moviesJsonList;

// Hint:
// Convert the string to List of maps using jsonDecode and then use it

// Create a stateful widget called MoviesPage here

class poster extends StatefulWidget {
  @override
  _posterState createState() => _posterState();
}

class _posterState extends State<poster> {
  List movies = jsonDecode(moviesList);
  int i =0;

  void next() {
    setState(() {
      i += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Movies Poster',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 88.0, right: 88, top: 80, bottom: 56),
                child: Image(
                  image: NetworkImage(movies[i]['poster']),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            flex: 2,
          ),
          Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 160, left: 125, right: 125, top: 20),
                  child: RaisedButton(
                    child: Center(child: Text('Next Movie')),
                    color: Colors.yellow,
                    onPressed: next,
                  ),
                ),
              ),
              flex: 1),
        ],
      ), // Use stateful widget you created here
    );
  }
}
