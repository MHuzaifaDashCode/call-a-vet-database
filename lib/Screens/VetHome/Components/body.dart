import 'package:call_a_vet/Screens/Login/login_screen.dart';
import 'package:call_a_vet/common_widgets/category_card.dart';
import 'package:call_a_vet/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kbackcolor,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: kbackcolor,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/menu.png"),
                    ),
                  ),
                  Text(
                    "WELCOME \nSalman Iqbal\n\n\n\n\n\n",

                  ),
                 
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Manage Appointment",
                          img: "assets/images/appointment2.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Analytics",
                          img: "assets/images/analytics2.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Wallet",
                          img: "assets/images/wallet2.png",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Awards",
                          img: "assets/images/medal2.png",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}