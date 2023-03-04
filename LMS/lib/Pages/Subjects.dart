import 'package:flutter/material.dart';

import 'books.dart';

class Subjects extends StatefulWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            )),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myContainer("Book1"),
                SizedBox(
                  width: 30,
                ),
                myContainer("Book2"),
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myContainer( "Book3"),
                SizedBox(
                  width: 30,
                ),
                myContainer("Book4"),
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myContainer( "Book5"),
                SizedBox(
                  width: 30,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class myContainer extends StatelessWidget {
  // const mycontainer({Key? key}) : super(key: key);
  String subname;
  //String mycolor;
  myContainer(this.subname);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.lightBlue,
      child: TextButton(
        onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Books()));
        },
        child: Text(
          subname,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
