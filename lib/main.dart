import 'package:flutter/material.dart';
import 'package:movies_app/Homepage.dart';

void main(){
  runApp(MyApp());
}

class MyThemeData {
  static final primarycolor = Color.fromRGBO(18, 19, 18, 1.0);
  static final selecteditem = Color.fromRGBO(255, 187, 59, 1.0);
  static final unselecteditem = Color.fromRGBO(255, 255, 255, 1.0);
  static final CircularProgressIndicator = Color.fromRGBO(255, 255, 255, 1.0);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
          primaryColor: MyThemeData.primarycolor,
      ),
      routes: {
        Homepage.routeName: (buildContext)=> Homepage(),
      },
      initialRoute: Homepage.routeName,
    );
  }
}