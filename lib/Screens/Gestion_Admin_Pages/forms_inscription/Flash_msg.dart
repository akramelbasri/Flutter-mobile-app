import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Admin_dashboard.dart';

class FlashMsg extends StatelessWidget {
  const FlashMsg({Key? key}) : super(key: key);
  static const screenRoute = "/succeesMsg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Annonce ?"),
          leading: Icon(
            Icons.info_outline,
            size: 30,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
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
                "Votre inscription est bien Enregistrée",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 82, 17)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                child: RaisedButton(
                    color: Color.fromARGB(255, 0, 140, 255),
                    child: Text(
                      " home ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, AdminDashboard.screenRoute, (route) => false);
                      // Navigator.of(context).pushNamed(AdminDashboard.screenRoute);
                    }),
              )
            ],
          ),
        )),
      ),
    );
  }
}
