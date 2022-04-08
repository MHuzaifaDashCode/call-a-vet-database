import 'package:flutter/material.dart';
import 'package:call_a_vet/constants.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Image.asset("assets/images/menu.png"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Welcome ",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "Salman",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Image.asset("assets/images/notification.png"),
        onPressed: () {},
      ),
    ],
  );
}
