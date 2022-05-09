import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Admin_dashboard.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/signup2.dart';

import 'Get_First_Last_Name.dart';

class EtudiantSignUp extends StatelessWidget {
  // const EtudiantSignUp({Key? key}) : super(key: key);
  static const screenRoute = "/SignUp1";
  TextEditingController LastName = TextEditingController();
  TextEditingController FirstName = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: ScaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Colors.orange,
                        Color.fromARGB(255, 255, 255, 255)
                      ]),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 0,
                        child: RaisedButton(
                          color: Color.fromARGB(255, 255, 227, 133)
                              .withOpacity(.7),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AdminDashboard.screenRoute);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 25,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 4 - 10,
                        left: 0,
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 251, 215, 95),
                                Colors.white,
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                          ),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 4,
                        left: 25,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        )),
                    Positioned(
                        top: 20,
                        right: 0,
                        child: Container(
                          height: 250,
                          child: Image(
                            image: AssetImage("images/signup4.png"),
                            fit: BoxFit.contain,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextFormField(
                        controller: FirstName,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " this is required ";
                          }
                          return null;
                        },
                        style: TextStyle(
                            color: Color.fromARGB(179, 0, 0, 0), fontSize: 25),
                        decoration: InputDecoration(
                            hintText: "First Name",
                            prefixIcon: Icon(
                              Icons.perm_identity_outlined,
                              size: 30,
                            ),
                            fillColor: Color.fromARGB(255, 147, 205, 224)
                                .withOpacity(0.2),
                            filled: true,
                            labelText: " First name : ",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40)))),
                      ),
                    ),
                    SizedBox(height: 17),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextFormField(
                        controller: LastName,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " this is required ";
                          }
                          return null;
                        },
                        style: TextStyle(
                            color: Color.fromARGB(179, 0, 0, 0), fontSize: 25),
                        decoration: InputDecoration(
                            hintText: " Last Name ",
                            prefixIcon: Icon(
                              Icons.perm_identity_outlined,
                              size: 30,
                            ),
                            fillColor: Color.fromARGB(255, 147, 205, 224)
                                .withOpacity(0.2),
                            filled: true,
                            labelText: "Last name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40)))),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // TextFormField(),
              Container(
                  width: MediaQuery.of(context).size.width - 70,
                  child: RaisedButton(
                      child: Text(
                        "suivante",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      color: Color.fromARGB(255, 0, 119, 255).withOpacity(.8),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: () {
                        print(FirstName);
                        print(LastName);
                        if (formKey.currentState!.validate()) {
                          // pass parametre password and name to other page...
                          ScaffoldKey.currentState!.showSnackBar(SnackBar(
                              content: Text(
                            "Data Saving ...",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )));
                          Navigator.of(context).pushNamed(singnup2.screenRoute
                              // ,
                              // arguments: getArgs(
                              //     FirstName as String, LastName as String)
                              );
                        }
                      }))
            ],
          ),
        ),
        bottomSheet: Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 2),
            child: Text(
              "1/2",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 23, 42)),
            )),
      ),
    );
  }
}
