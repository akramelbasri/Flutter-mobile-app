import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Admin_dashboard.dart';
import 'package:prj1_image_bg/Screens/not_found_pages_And_succees/Not_found_page_admin.dart';
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

  // ---------------- firebase --------------- :
  final _auth = FirebaseAuth.instance;

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
            centerTitle: true,
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
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Email";
                              }
                              // reg expression for email validation
                              if (!RegExp(// email filter
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return ("Please Enter a valid email");
                              }
                              return null;
                            },
                            controller: adminEmail,
                            autofocus: false,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                color: Color.fromARGB(179, 0, 0, 0),
                                fontSize: 25),
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(
                                  Icons.perm_identity,
                                  size: 30,
                                ),
                                fillColor: Color.fromARGB(255, 147, 205, 224)
                                    .withOpacity(0.2),
                                filled: true,
                                labelText: "Email : ",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: adminPassword,
                            validator: (value) {
                              if (value != null && value.length < 6) {
                                return "Enter minimum. 6 characters";
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
                                    signIn(context, adminEmail.text,
                                        adminPassword.text);
                                    // final isValidate =
                                    //     formKey.currentState!.validate();
                                    // if (isValidate) {
                                    //   scaffoldKey.currentState!.showSnackBar(
                                    //       SnackBar(
                                    //           content: Text(
                                    //               "please wait the verify data...")));
                                    // if (adminEmail.text == "admin" &&
                                    //     adminPassword.text == "admin2002") {
                                    // Navigator.pushNamedAndRemoveUntil(
                                    //     context,
                                    //     AcceilPage.screenRoute,
                                    //     (route) => false);
                                    //   print("information is true");
                                    //   print(adminEmail.text +
                                    //       adminPassword.text);
                                    // } else {
                                    // print("object Error");
                                    // Navigator.pushNamedAndRemoveUntil(
                                    //     context,
                                    //     NotFoundPage.screenRoute,
                                    //     (route) => false);
                                    print("information is False");
                                    print(adminEmail.text + adminPassword.text);
                                    //   }
                                    // } else {
                                    // Navigator.pushNamedAndRemoveUntil(
                                    //     context,
                                    //     NotFoundPage.screenRoute,
                                    //     (route) => false);
                                    //   print("information is False");
                                    //   print(
                                    //       adminEmail.text + adminPassword.text);
                                    // }
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

// creation the login function
  void signIn(BuildContext context, String email, String password) async {
    if (formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((UserId) => {
                // do this if signIn successfuly passed.
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.pushNamedAndRemoveUntil(
                    context, AdminDashboard.screenRoute, (route) => false),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
