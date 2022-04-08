import 'package:call_a_vet/Screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:call_a_vet/Screens/Login/components/background.dart';
import 'package:call_a_vet/Screens/Signup/signup_screen.dart';
import 'package:call_a_vet/Components/already_have_an_account_acheck.dart';
import 'package:call_a_vet/Components/rounded_button.dart';
import 'package:call_a_vet/Components/rounded_input_field.dart';
import 'package:call_a_vet/Components/rounded_password_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}


class _loginScreenState extends State<Body>{

  final _formKey = GlobalKey<FormState>();

  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();


  final _auth = FirebaseAuth.instance;

  String errorMessage;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login2.png",
              height: size.height * 0.08,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context){
                    return DashboardScreen();
                  },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
