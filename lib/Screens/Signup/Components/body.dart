import 'package:flutter/material.dart';
import 'package:call_a_vet/Screens/Login/login_screen.dart';
import 'package:call_a_vet/Screens/Signup/components/background.dart';
import 'package:call_a_vet/Screens/Signup/components/or_divider.dart';
import 'package:call_a_vet/Screens/Signup/components/social_icon.dart';
import 'package:call_a_vet/Components/already_have_an_account_acheck.dart';
import 'package:call_a_vet/Components/rounded_button.dart';
import 'package:call_a_vet/Components/rounded_input_field.dart';
import 'package:call_a_vet/Components/rounded_password_field.dart';
import 'package:call_a_vet/Components/confirm_rounded_password_field.dart';
import 'package:call_a_vet/Screens/dashboard/dashboard_screen.dart';

class Body extends StatelessWidget {
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
              "assets/images/Signup2.png",
              height: size.height * 0.08,
            ),
            RoundedInputField(
              hintText: "Full Name",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            ConfirmRoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashboardScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
