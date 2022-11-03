import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/admin_infos.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/add_stager.dart';

class NotFoundPageAddStager extends StatelessWidget {
  const NotFoundPageAddStager({Key? key}) : super(key: key);
  static const screenRoute = "/NotFoundPageAddStager";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 400,
            child: Image(
              image: AssetImage("images/error-404_img.png"),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 35,
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
                        context, AddStager.screenRoute, (route) => false);
                  },
                ),
              )
            ],
          )
        ]),
        appBar: AppBar(
          title: Text("Annonce?"),
          leading: Icon(Icons.info_outline),
        ),
      ),
    );
  }
}
