import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Imagedemo extends StatefulWidget {
  const Imagedemo({Key? key}) : super(key: key);

  @override
  State<Imagedemo> createState() => _ImagedemoState();
}

class _ImagedemoState extends State<Imagedemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image:AssetImage('assets/Images/img_1.png')
        )
        );
}}
