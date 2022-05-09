import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/admin_infos.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);
  static const screenRoute = "/NotFoundPage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 400,
            child: Image(
              image: AssetImage("images/notFoundbg3.png"),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              Container(
                child: Text("page not found ! Try again...",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 127, 254),
                      fontSize: 25,
                      // fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                width: MediaQuery.of(context).size.width - 50,
                child: RaisedButton(
                  color: Color.fromARGB(255, 254, 131, 0),
                  child: Text(
                    "Go back",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  // color: Color.fromARGB(255, 255, 51, 0).withOpacity(.3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                    Navigator.of(context).pushNamed(admin_login.screenRoute);
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
