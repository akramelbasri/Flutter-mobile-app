import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stagers.dart';

import '../../not_found_pages_And_succees/Not_found_page_admin.dart';
import '../../not_found_pages_And_succees/add_stager_msg_succees.dart';
import '../../not_found_pages_And_succees/not_found_addStager.dart';
import 'Flash_msg.dart';

class AddStager extends StatelessWidget {
  // const AddStager({Key? key}) : super(key: key);
  TextEditingController StagerCin = TextEditingController();
  TextEditingController StagerPrenom = TextEditingController();
  TextEditingController StagerNom = TextEditingController();
  TextEditingController StagerAdress = TextEditingController();
  TextEditingController StagerTele = TextEditingController();
  TextEditingController StagerEmail = TextEditingController();
  TextEditingController StagerAnnee = TextEditingController();
  TextEditingController StagerMois = TextEditingController();
  TextEditingController StagerJour = TextEditingController();
  TextEditingController StagerPassword = TextEditingController();
  // identify keys :
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  static const screenRoute = "/AddStager";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Add Stager ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 24, 178, 255).withOpacity(.8),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, gestionStagers.screenRoute, (route) => false);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 34,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context,
                    NotFoundPageAddStager.screenRoute, (route) => false);
              },
              icon: Icon(
                Icons.groups_sharp,
                // color: Color.fromARGB(255, 4, 255, 242),
                color: Colors.white,
                size: 37,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 270,
                margin: EdgeInsets.only(bottom: 20),
                child: Image(
                  image: AssetImage("images/add_stager.png"),
                ),
              ),
              Container(
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        CreerInputText(
                            context,
                            30,
                            StagerPrenom,
                            "Prenom",
                            Icon(
                              Icons.contacts_outlined,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            " Prenom : ",
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        CreerInputText(
                            context,
                            30,
                            StagerNom,
                            "Nom",
                            Icon(
                              Icons.contacts_sharp,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            " Nom : ",
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        CreerInputText(
                            context,
                            30,
                            StagerCin,
                            "CIN",
                            Icon(
                              Icons.person,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            " CIN : ",
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        CreerInputText(
                            context,
                            30,
                            StagerAdress,
                            "Adress",
                            Icon(
                              Icons.place_rounded,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            " Adress : ",
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        CreerInputText(
                            context,
                            30,
                            StagerEmail,
                            "Email",
                            Icon(
                              Icons.email_outlined,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            " Email : ",
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        inputNumber(
                            context,
                            30,
                            StagerTele,
                            "Telephone",
                            Icon(
                              Icons.phone_sharp,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            "Telephone : ",
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Date D'entrer : ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            inputNumber(
                                context,
                                MediaQuery.of(context).size.width / 2 +
                                    MediaQuery.of(context).size.width / 10,
                                StagerAnnee,
                                "année",
                                Icon(
                                  Icons.event,
                                  size: 30,
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                "annee : ",
                                Color.fromARGB(255, 177, 234, 253)
                                    .withOpacity(0.2),
                                14),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            inputNumber(
                                context,
                                MediaQuery.of(context).size.width / 2 +
                                    MediaQuery.of(context).size.width / 10,
                                StagerMois,
                                "mois",
                                Icon(
                                  Icons.event,
                                  size: 30,
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                "mois : ",
                                Color.fromARGB(255, 177, 234, 253)
                                    .withOpacity(0.2),
                                14),
                            inputNumber(
                                context,
                                MediaQuery.of(context).size.width / 2 +
                                    MediaQuery.of(context).size.width / 10,
                                StagerJour,
                                "jour",
                                Icon(
                                  Icons.event,
                                  size: 30,
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                "jour : ",
                                Color.fromARGB(255, 177, 234, 253)
                                    .withOpacity(0.2),
                                14),
                          ],
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        // password
                        Container(
                          width: MediaQuery.of(context).size.width - 30,
                          child: TextFormField(
                            controller: StagerPassword,
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
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                fillColor: Color.fromARGB(255, 147, 205, 224)
                                    .withOpacity(0.2),
                                filled: true,
                                labelText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14))),
                          ),
                        ),
                        // add button
                        SizedBox(
                          height: 30,
                        ),
                        // TextFormField(),
                        Container(
                            width: MediaQuery.of(context).size.width - 30,
                            height: 55,
                            child: RaisedButton(
                                splashColor: Color.fromARGB(230, 181, 245, 255),
                                color: Color.fromARGB(255, 24, 178, 255),
                                padding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                onPressed: () {
                                  final isValidate =
                                      formKey.currentState!.validate();
                                  if (isValidate) {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        SucceesPageAddStager.screenRoute,
                                        (route) => false);
                                  } else {
                                    print("object Eroororro");
                                  }
                                },
                                child: Text(
                                  "add",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ))),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Container inputNumber(context, double margeMin, TextEditingController control,
      String textHint, Icon icon, String labeltext, Color color, double degre) {
    return Container(
      width: MediaQuery.of(context).size.width - margeMin,
      child: TextField(
        controller: control,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
            hintText: textHint,
            prefixIcon: icon,
            labelText: labeltext,
            fillColor: color,
            // Color.fromARGB(255, 193, 250, 255)
            //     .withOpacity(0.2),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(degre))),
      ),
    );
  }

  Container CreerInputText(
      context,
      double margeMin,
      TextEditingController control,
      String textHint,
      Icon icon,
      Color InputbgColor,
      String label,
      double raduis) {
    return Container(
      width: MediaQuery.of(context).size.width - margeMin,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "it's required champe , please.... ";
          } else {
            return null;
          }
        },
        controller: control,
        style: TextStyle(color: Color.fromARGB(179, 0, 0, 0), fontSize: 25),
        decoration: InputDecoration(
            hintText: textHint,
            prefixIcon: icon,
            fillColor: InputbgColor,
            filled: true,
            labelText: label,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(raduis))),
      ),
    );
  }
}
