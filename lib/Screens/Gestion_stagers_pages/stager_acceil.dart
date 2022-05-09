import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_stagers_pages/stager_services.dart';

import '../Gestion_Admin_Pages/Admin_dashboard.dart';

class stagerAcceil extends StatelessWidget {
  const stagerAcceil({Key? key}) : super(key: key);
  static const screenRoute = "/StagerAccueil";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  Container(
                    height: 430,
                    child: Image(
                      image: AssetImage("images/stagersPic.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "welcome Ms. \n",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.black.withOpacity(.6)),
                            children: [
                              TextSpan(
                                text: " stager x \n",
                                style: TextStyle(
                                    fontSize: 26,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "to stagers espace",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black.withOpacity(.6)))
                            ])),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                          color: Color.fromARGB(255, 40, 72, 93),
                          width: MediaQuery.of(context).size.width - 40,
                          margin: EdgeInsets.symmetric(horizontal: 130),
                          child: RaisedButton(
                              color: Color.fromARGB(255, 40, 72, 93),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(stagerServices.screenRoute);
                              },
                              child: Text(
                                "Services",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ))),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          color: Color.fromARGB(255, 255, 47, 0),
                          width: MediaQuery.of(context).size.width - 40,
                          margin: EdgeInsets.symmetric(horizontal: 130),
                          child: RaisedButton(
                              color: Color.fromARGB(255, 255, 47, 0),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Login out",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
