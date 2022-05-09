import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Admin_dashboard.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Not_found_page.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/accueil.dart';

class admin_login extends StatelessWidget {
  // const admin_login({Key? key}) : super(key: key);
  TextEditingController adminEmail = TextEditingController();
  TextEditingController adminPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String _email = "";
  String _pass = "";
  static const screenRoute = "/AdminAccount";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
            title: Text(
              "admin Login",
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
                  height: 400,
                  child: Image(
                    image: AssetImage("images/login_bg2.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            // validator: (email) =>
                            //     email != null && !EmailValidator.validate(email)
                            //         ? "Entrer a valid Email " // form is not valid
                            //         : null, // form is valid
                            // controller: MyController,
                            controller: adminEmail,
                            style: TextStyle(
                                color: Color.fromARGB(179, 0, 0, 0),
                                fontSize: 25),
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  size: 30,
                                ),
                                fillColor: Color.fromARGB(255, 147, 205, 224)
                                    .withOpacity(0.2),
                                filled: true,
                                labelText: "Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: adminPassword,
                            validator: (value) {
                              if (value != null && value.length < 6) {
                                return "Enter min. 6 characters";
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
                                fillColor: Color.fromARGB(255, 147, 205, 224)
                                    .withOpacity(0.2),
                                filled: true,
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // TextFormField(),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                  color: Colors.orange,
                                  padding: EdgeInsets.all(10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  onPressed: () {
                                    final isValidate =
                                        formKey.currentState!.validate();
                                    if (isValidate) {
                                      scaffoldKey.currentState!.showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  "please wait the verify data...")));
                                      if (adminEmail.text == "admin" &&
                                          adminPassword.text == "admin2002") {
                                        Navigator.of(context)
                                            .pushNamed(AcceilPage.screenRoute);
                                      } else {
                                        print("object Eroororro");
                                        Navigator.of(context).pushNamed(
                                            NotFoundPage.screenRoute);
                                      }
                                    } else {
                                      Navigator.of(context)
                                          .pushNamed(NotFoundPage.screenRoute);
                                    }
                                    // print("Raise button clicked");
                                    // if (!_formKey.currentState.validate()) {
                                    //   return;
                                    // }
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
