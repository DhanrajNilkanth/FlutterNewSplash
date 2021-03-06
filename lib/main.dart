import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 20000,
          splash: 'assets/among.png',
          nextScreen: MainScreen(),
        splashIconSize: 350.0,
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.downToUp,
        backgroundColor: Color.fromRGBO(255, 222, 42,1),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Text('Main Screen',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}










