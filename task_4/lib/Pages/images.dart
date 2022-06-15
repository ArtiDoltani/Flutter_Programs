import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Imagedemo extends StatefulWidget {
  const Imagedemo({Key? key}) : super(key: key);

  @override
  State<Imagedemo> createState() => _ImagedemoState();
}

class _ImagedemoState extends State<Imagedemo> {
  List<Container> imagelist=[] ;
  List containerimage=['assets/Images/img_1.png','assets/Images/img_2.png','assets/Images/img_3.png','assets/Images/img_4.png','assets/Images/img_5.png','assets/Images/img_6.png'];
int count=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
title: Row(children: [
  Icon(Icons.image),
 Text("Images") ,
 ElevatedButton(
  onPressed:()
  {setState(() {
  
  imagelist.add(
    Container(
      width: 90.5,
      height: 80.6,
      child: Image(
        image: AssetImage(
          containerimage[count]),
          width: 80,height: 70,),

  ))
  ;
if(count<containerimage.length-1){
   count++;
}
  else {
    count=0;
  }
//    counter++;
});
}, 
 child: Icon(Icons.add)
 )
 
 
],),

),
body:
 Container(
child:SingleChildScrollView(
child: Column(
  children:
   //[
    // Container(color: Colors.amberAccent,
    // height: 60,
    // width: 60,
    
    // )
 // ],
    imagelist,
),
),
    )
    );

    // return Container(
    //   child: Image(
    //     image:AssetImage('assets/Images/img_2.png')
    //     )
    //     );
}}
