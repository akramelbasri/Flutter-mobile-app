import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/admin_infos.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/add_stager.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stagers.dart';

class SucceesPageAddStager extends StatelessWidget {
  const SucceesPageAddStager({Key? key}) : super(key: key);
  static const screenRoute = "/SucceesPageAddStager";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Annonce?"),
        leading: Icon(Icons.info_outline),
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Image(
                image: AssetImage("images/succees4.png"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mission succefull",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 82, 17)),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              width: MediaQuery.of(context).size.width - 50,
              child: RaisedButton(
                color: Color.fromARGB(255, 0, 162, 255).withOpacity(.7),
                child: Text(
                  "Back",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(.7),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                // color: Color.fromARGB(255, 255, 51, 0).withOpacity(.3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(10),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, gestionStagers.screenRoute, (route) => false);
                },
              ),
            )
          ],
        ),
      )),
    ));
  }
}
