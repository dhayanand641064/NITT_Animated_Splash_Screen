import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
          duration: 3000,
          splash: Image(image: AssetImage('images/nitt_logo.png')),
          nextScreen: SecondScreen(),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 500,
          backgroundColor: Color.fromARGB(200, 200, 100, 50));




  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("NITT Mess App")),
      body: Center(
          child:Text("NITT Mess Application",textScaleFactor: 2,)
      ),
    );
  }
}
