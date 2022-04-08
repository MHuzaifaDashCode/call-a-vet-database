import 'package:call_a_vet/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';


class TopRatedDoctor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<TopRatedDoctor> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }


Widget initScreen() {
    Size size = MediaQuery.of(context).size;
    return Scaffold(



 



          
                body: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    DemoTopRatedDoctor(
                      "assets/images/vet.png",
                      "Dr. Fred Mask",
                      "Heart surgen",
                      "4.1",
                      "",
                    ),
                    DemoTopRatedDoctor(
                      "assets/images/vet.png",
                      "Dr. Stella Kane",
                      "Bone Specialist",
                      "4.2",
                      "",
                    ),
                    DemoTopRatedDoctor(
                      "assets/images/vet.png",
                      "Dr. Zac Wolff",
                      "Eyes Specialist",
                      "4.4",
                      "",
                    ),
                    DemoTopRatedDoctor(
                      "assets/images/vet.png", 
                      "Dr. Elon Musk",
                      "Heart surgen", 
                      "4.3", 
                      ""),
          ],
        ),
      ),
    );
}

    Widget DemoTopRatedDoctor(String img, String name, String speciality,
      String rating, String distance) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Container(
        height: 90,
        // width: size.width,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(img),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Color(0xffababab),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3, left: size.width * 0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}