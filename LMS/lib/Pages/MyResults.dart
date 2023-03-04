// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class MyResult extends StatefulWidget {
  const MyResult({Key? key}) : super(key: key);

  @override
  State<MyResult> createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {
  @override
  TextStyle styleVariable= TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){}, icon:Icon(Icons.arrow_back) ),
        title: Text('My Results'),
      ),
        body: Container( color: Color.fromARGB(153, 206, 203, 203),
                child:Column(
            children: [
            Container(
              padding: EdgeInsets.all(10),
               margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration
          (shape: BoxShape.rectangle,
           color: Colors.white,
             ),
            child: Row(
              children: [
                Icon(Icons.book), Text('Subject :', style: styleVariable, ),
                 Text('subjname' )],
            ),
            ),
            Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration
          (shape: BoxShape.rectangle,
           color: Colors.white,
             ),
              child: Row(
              children: [
                Icon(Icons.class_), Text('Class :', style: styleVariable ),
                 Text('classname' ,style: TextStyle(fontSize: 20.0),)],
            ),
            ),
            Container(
              padding: EdgeInsets.all(10),
               margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration
          (shape: BoxShape.rectangle,
           color: Colors.white,
             ),
              child: Row(
              children: [
                Icon(Icons.done), Text('Completion Criteria(%) :', style: styleVariable ),
                 Text('50', style: TextStyle(fontSize: 20.0), )],
            ),
            ),
            
            Container(
          padding: EdgeInsets.all(10),
               margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration
          (shape: BoxShape.rectangle,
           color: Colors.white,
             ),
              //padding: EdgeInsets.only(bottom: 18),
child: Column( 
  children: [  
    Row( children: [
                Icon(Icons.bar_chart), Text('Participation(%) :', style: styleVariable  ),
                
                 Text('50', style: TextStyle(fontSize: 20.0), )],),
                 SizedBox(height: 18,) ,
    Row( children: [
                Text('Exercises(%) :',style: styleVariable),
                 Text('0', style: TextStyle(fontSize: 20.0), )],),
                SizedBox(height: 18,) ,
    Row( children: [
                Text('Quizes(%) :',style: styleVariable ),
                Expanded(
                child:LinearPercentIndicator(
                  width: 180,
                progressColor: Colors.green,
                percent: 0.6,
                lineHeight: 20,
                trailing:  Text('60% ' ,style: styleVariable,),
                )),        
                //  Text('0', style: TextStyle(fontSize: 20.0), )
                 ],),
                SizedBox(height: 18,) ,
    Row( children: [
                 Text('Videos(%) :',  style: styleVariable ),
                 Expanded(
                child:LinearPercentIndicator(
                  width: 180,
                progressColor: Colors.green,
                percent: 0.6,
                lineHeight: 20,
                trailing:  Text('60% ' ,style: styleVariable,),
                )),   
                 //Text('0', style: TextStyle(fontSize: 20.0), )
                 ],),
                 SizedBox(height: 18,) ,
    Row( children: [
                Text('Total(%) :', style: styleVariable ),
                 Text('0', style: TextStyle(fontSize: 20.0), )],
                 )
  ],
),
            ),
            Container(height: 180,
           padding: EdgeInsets.all(10),
               //margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration
          (shape: BoxShape.rectangle,
           color: Colors.white,
             ),
              child: Row(
              children: [
                Icon(Icons.cancel), Text('Status :', style: styleVariable ),
                 Text('-',style: TextStyle(fontSize: 20.0), )],
            ),),
          //   Container(height: 100,
          //      //margin: EdgeInsets.only(bottom: 10),
          // decoration: BoxDecoration
          // (shape: BoxShape.rectangle,
          //  color: Colors.white,
          //    ),
          //   )

          ],)
        ),

    );
  }
}