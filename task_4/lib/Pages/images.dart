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
  //1st way
  //List<Container> imagelist=[] ;
 // List containerimage=['assets/Images/img_1.png','assets/Images/img_2.png','assets/Images/img_3.png','assets/Images/img_4.png','assets/Images/img_5.png','assets/Images/img_6.png'];
// int count=0;
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
// appBar: AppBar(
// title: Row(children: [
//   Icon(Icons.image),
//  Text("Images") ,
//  ElevatedButton(
//   onPressed:()
//   {setState(() {
  
//   imagelist.add(
//     Container(
//       width: 90.5,
//       height: 80.6,
//       child: Image(
//         image: AssetImage(
//           containerimage[count]),
//           width: 80,height: 70,),

//   ))
//   ;
// if(count<containerimage.length-1){
//    count++;
// }
//   else {
//     count=0;
//   }
// //    counter++;
// });
// }, 
//  child: Icon(Icons.add)
//  )
 
 
// ],),

// ),
// body:
//  Container(
// child:SingleChildScrollView(
// child: Column(
//   children:
//     imagelist,
// ),
// ),
//     )
//     );
// }}


// // 2nd way of getting different images effecient way
List<Image> imagelist=[] ;
int count=1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
  leading: IconButton(icon: Icon(Icons.menu) ,
  onPressed:(){}),
title: Text('MyNewApp'),
 actions:[
  IconButton(onPressed: (){}, icon:Icon(Icons.search) 
  ),
IconButton(onPressed: (){}, icon:Icon(Icons.more_vert),
)
],
),
// Row(children: [
//   Icon(Icons.image),
//  Text("Images") ,
//  ElevatedButton(
//   onPressed:()
//   {setState(() {
  
//   imagelist.add(
//     //  Image(
//     //     // image: AssetImage(
//     //     //  'assets/Images/img_$count.png'),
        
//     //      ),
// Image.asset('assets/Images/img_$count.png')
  
//   );

//     count< 6 ? count++ : count=1;
// });
// }, 
//  child: Icon(Icons.add)
//  )
 
 
// ],),

// ),
body:
 Container(
  
child: GridView.count(
  crossAxisCount:4,
  children:[
    Image.asset('assets/Images/img_1.png'),
     Image.asset('assets/Images/img_2.png'),
      Image.asset('assets/Images/img_3.png'),
       Image.asset('assets/Images/img_4.png'),
        Image.asset('assets/Images/img_5.png'),
         Image.asset('assets/Images/img_6.png'),
          Image.asset('assets/Images/img_1.png'),
     Image.asset('assets/Images/img_2.png'),
  ]
  //  imagelist,
),
),
    floatingActionButton: FloatingActionButton(onPressed:() { 
      // setState(() {
      //   imagelist.add(Image.asset('assets/Images/img_$count.png'));
      //    count< 6 ? count++ : count=1;
      }
    )
    );
    

    }
   // child:Icon(Icons.add)),
    

}
