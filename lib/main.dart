import 'package:call_a_vet/Screens/Welcome/welcome_screen.dart';
import 'package:call_a_vet/Screens/splash_screen.dart';
import 'package:call_a_vet/constants.dart';
import 'package:flutter/material.dart';




 void main() {
   runApp(MyApp());
 }




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Call A Vet',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: SplashScreen(),
    );
  }
}