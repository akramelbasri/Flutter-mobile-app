import 'package:flutter/material.dart';

class stagerServices extends StatelessWidget {
  const stagerServices({Key? key}) : super(key: key);
  static const screenRoute = "/StagerServices";
  // function to create RaiseButton :
  Container CreerButton(
      BuildContext context,
      String title,
      int x_horiz,
      Color bgBtn,
      Color textColor,
      double pdn,
      double raduisBrd,
      Function onTapBtn) {
    //}, IconData icon, Function onTapLink) {
    return Container(
        // color: bgBtn,
        width: MediaQuery.of(context).size.width - x_horiz,
        margin: EdgeInsets.symmetric(horizontal: 130),
        child: RaisedButton(
            color: bgBtn,
            padding: EdgeInsets.all(pdn),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(raduisBrd))),
            onPressed: () => onTapBtn(),
            child: Text(
              title,
              style: TextStyle(
                  color: textColor, fontSize: 26, fontWeight: FontWeight.bold),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("services"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Text(" stager sevices page ........"),
              ),
              CreerButton(context, "akram", 20, Color.fromARGB(255, 0, 89, 255),
                  Color.fromARGB(255, 255, 255, 255), 10, 20, () {
                print("btn clicked .......");
              }),
            ],
          ),
        ),
      ),
    );
  }
}
