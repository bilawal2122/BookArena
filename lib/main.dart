import 'package:book_arena/views/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    BookArena(),
  );
}


class BookArena extends StatelessWidget{
  String name = "Shahzad";
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}