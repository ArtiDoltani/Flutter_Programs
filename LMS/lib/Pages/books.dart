import 'dart:html';

import 'package:flutter/material.dart';
class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
 
  Widget build(BuildContext context){
return Scaffold(
appBar: AppBar(
  title: Text("Books"),
),
body: ListView(
  children: [
TextButton(onPressed: (() {
  
}), child: Text("Book1"), 
style: 
TextButton.styleFrom(
backgroundColor: Colors.amber,

)),
TextButton(onPressed: (() {
  
}), child: Text("Book2"),
style: 
TextButton.styleFrom(

backgroundColor: Colors.blueGrey,

)),
TextButton(onPressed: (() {
  
}), child: Text("Book3"),
style: 
TextButton.styleFrom(
backgroundColor: Colors.lightGreen,

)),
]),
);
  }
}