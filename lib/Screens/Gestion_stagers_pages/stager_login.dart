import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Gestion_Admin_Pages/Not_found_page.dart';
import 'package:prj1_image_bg/Screens/Gestion_stagers_pages/stager_acceil.dart';

class stagersPage extends StatelessWidget {
  // const stagersPage({Key? key}) : super(key: key);

  TextEditingController stagerCIN = TextEditingController();
  TextEditingController stagerPassword = TextEditingController();
  final formeKey = GlobalKey<FormState>();
  final scaffold_Key = GlobalKey<ScaffoldState>();
  static const screenRoute = "/StagerAccount";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffold_Key,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
            title: Text(
              "Stagers Login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 23,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 31, 2, 100)),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 330,
                  child: Image(
                    image: AssetImage("images/login_bg3.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                      key: formeKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: stagerCIN,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "this champe is required !";
                              } else {
                                return null; // form is valid
                              }
                            },
                            style: TextStyle(
                                color: Color.fromARGB(179, 0, 0, 0),
                                fontSize: 25),
                            decoration: InputDecoration(
                                hintText: "CIN",
                                prefixIcon: Icon(
                                  Icons.group_sharp,
                                  size: 30,
                                ),
                                fillColor: Color.fromARGB(255, 109, 255, 218)
                                    .withOpacity(0.2),
                                filled: true,
                                labelText: "CIN : ",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: stagerPassword,
                            validator: (value) {
                              if (value != null && value.length <= 6) {
                                return "Enter minimum 6 characters";
                              } else {
                                return null; // form is valid
                              }
                            },
                            style: TextStyle(
                                color: Color.fromARGB(179, 0, 0, 0),
                                fontSize: 25),
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 30,
                                ),
                                fillColor: Color.fromARGB(255, 109, 255, 218)
                                    .withOpacity(0.2),
                                filled: true,
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // TextFormField(),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                  color: Color.fromARGB(255, 101, 255, 216),
                                  padding: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  onPressed: () {
                                    // final isValidate =
                                    // formeKey.currentState!.validate();
                                    print("validation bool : ");
                                    print(formeKey.currentState!.validate());
                                    print("stager name " + stagerCIN.text);
                                    print(
                                        "passwrod name " + stagerPassword.text);
                                    if (formeKey.currentState!.validate() ==
                                        true) {
                                      scaffold_Key.currentState!.showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  "please wait the verify data...")));
                                      if (stagerCIN.text == "stager" &&
                                          stagerPassword.text == "stager2002") {
                                        Navigator.of(context).pushNamed(
                                            stagerAcceil
                                                .screenRoute); // stagers Espace
                                      } else {
                                        print("validation error !!!!!!!!!! ");
                                        Navigator.of(context).pushNamed(
                                            NotFoundPage
                                                .screenRoute); // Error..
                                      }
                                    } else {
                                      Navigator.of(context)
                                          .pushNamed(NotFoundPage.screenRoute);
                                    }
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
