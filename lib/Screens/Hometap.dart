import 'package:flutter/material.dart';

class HomeTap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          flex: 3,
          child: Container(color: Colors.green,)),
      Expanded(child: Container(color: Colors.yellow,)),
      Expanded(
          flex: 2,
          child: Container(color: Colors.blue,)),
    ],);
  }
}