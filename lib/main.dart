import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tic_tac_toe/HomePage.dart';
void main(){
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new HomePage(),
      title: new Text('Welcome',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26.0,
        color: Colors.purple,
       ),
      ),
      image: Image.asset("images/pic9.png"),
      backgroundColor: Colors.white,
      photoSize: 150.0,
    );
  }
}

