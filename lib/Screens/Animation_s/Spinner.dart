import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stagers.dart';

class Spinner extends StatefulWidget {
  const Spinner({Key? key}) : super(key: key);
  static const screenRoute = "/Spinner";

  @override
  State<Spinner> createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: Text("Spinner"),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
                  height: 6,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width / 4,
                  child: LinearProgressIndicator(
                    // strokeWidth: 8,
                    color: Color.fromARGB(255, 21, 14, 90),
                  ))),
          SizedBox(
            height: 5,
          ),
          Text(
            "Please Wait..",
            style: TextStyle(
                fontSize: 17,
                color: Color.fromARGB(170, 0, 0, 0).withOpacity(.9)),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, gestionStagers.screenRoute, (route) => false);
            },
            child: Text("return"),
          )
        ],
      ),
      // bottomSheet: Text("please wait.."),
    ));
  }
}
