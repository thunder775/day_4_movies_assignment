import 'package:day_4_movies_assignment/movies.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black ,
      appBar: AppBar(
        title: Text(
          'Movies Poster',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(),// Use stateful widget you created here
    ),
  ));
}

// You are given json string of movies list (see file movies.dart)
String moviesList = MoviesList.moviesJsonList;

// Hint:
// Convert the string to List of maps using jsonDecode and then use it

// Create a stateful widget called MoviesPage here

