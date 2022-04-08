import 'package:flutter/material.dart';
import 'package:call_a_vet/constants.dart';
import 'package:call_a_vet/Screens/VetHome/Components/body.dart';


class VetHomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: Body(),
    );
  }
}

