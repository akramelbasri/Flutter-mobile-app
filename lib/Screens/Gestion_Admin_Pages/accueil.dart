import 'package:flutter/material.dart';

import 'Admin_dashboard.dart';

class AcceilPage extends StatelessWidget {
  const AcceilPage({Key? key}) : super(key: key);
  static const screenRoute = "/AdminAcceil";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                ),
                Container(
                  height: 300,
                  child: Image(
                    image: AssetImage("images/admin2.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "welcome Mr \n",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                          children: [
                            TextSpan(
                              text: " Abdellah ElMartoub \n",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 28, 138, 247),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: "to admin espace",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ])),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          margin: EdgeInsets.symmetric(horizontal: 130),
          child: RaisedButton.icon(
            color: Color.fromARGB(255, 0, 136, 255),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
            onPressed: () {
              Navigator.of(context).pushNamed(AdminDashboard.screenRoute);
            },
            icon: Icon(Icons.arrow_circle_right_rounded,
                size: 30, color: Colors.orange),
            label: Text("Next  ",
                style:
                    TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 1))),
          ),
        ),
      ),
    );
  }
}
