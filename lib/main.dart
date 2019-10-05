import 'package:day_4_movies_assignment/movies.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';

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
 
  int i = 0;

  List generator(List x){
    List temp = [];
    for(int i =0;i <x.length;i++){
      temp.add(x[i]['poster']);
    }
    return temp;
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
      body: CarouselSlider(
        height: 400.0,
        items: generator(movies).map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Image(image: NetworkImage(i),)
              );
            },
          );
        }).toList(),
      ) // Use stateful widget you created here
    );
  }
}
