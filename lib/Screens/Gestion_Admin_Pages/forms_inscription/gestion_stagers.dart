import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Admin_dashboard.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stager_search_modify.dart';
import '../../Animation_s/Spinner.dart';
import './add_stager.dart';

class gestionStagers extends StatelessWidget {
  const gestionStagers({Key? key}) : super(key: key);
  static const screenRoute = "/gestionStagers";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gestion des stageres"),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AdminDashboard.screenRoute, (route) => false);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9),
                size: 34,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.groups_sharp,
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(.6),
                  size: 37,
                )),
          ],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 270,
              margin: EdgeInsets.only(bottom: 40),
              child: Image(
                image: AssetImage("images/gestion_strgers.png"),
              ),
            ),
            buttondesign(
                context,
                20,
                Color.fromARGB(255, 47, 200, 255),
                Color.fromARGB(255, 200, 255, 0),
                Color.fromARGB(255, 88, 89, 90).withOpacity(0.6),
                Icon(
                  Icons.add,
                  size: 32,
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(.7),
                ),
                " add stager ",
                25,
                Colors.white,
                // function
                () async {
              print("first instriction...");
              Navigator.pushNamedAndRemoveUntil(
                  context, Spinner.screenRoute, (route) => false);
              // spinner ...........
              await Future.delayed(const Duration(seconds: 3), () {
                print(".... Second instriction....");
                Navigator.pushNamedAndRemoveUntil(
                    context, AddStager.screenRoute, (route) => false);
                
              });
              // print("after third instricion ");
              // Navigator.pushNamedAndRemoveUntil(
              //     context, AddStager.screenRoute, (route) => false);
            }),
            SizedBox(
              height: 12,
            ),
            buttondesign(
                context,
                20,
                Color.fromARGB(255, 200, 255, 0),
                Color.fromARGB(255, 69, 74, 61),
                Color.fromARGB(255, 68, 161, 255).withOpacity(0.5),
                Icon(
                  Icons.person_search_rounded,
                  size: 32,
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(.7),
                ),
                " Search & Modify ",
                25,
                Colors.white, () {
              Navigator.pushNamedAndRemoveUntil(
                  context, SearchAndModifyStager.screenRoute, (route) => false);
            }),

            // ),
            SizedBox(
              height: 12,
            ),
            buttondesign(
                context,
                20,
                Color.fromARGB(255, 67, 192, 254),
                Color.fromARGB(255, 79, 164, 111),
                Color.fromARGB(255, 88, 89, 90).withOpacity(0.5),
                Icon(
                  Icons.group_sharp,
                  size: 32,
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(.7),
                ),
                " List of stager ",
                25,
                Colors.white, () {
              print("it's run fun .......");
            }),
          ],
        ),
      ),
    );
  }

// dont use this btn
  RaisedButton CreerRaiseBtn(BuildContext context) {
    return RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.add,
                size: 35,
                color: Color.fromARGB(255, 82, 177, 255),
              ),
              Text(
                "add stager",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(gestionStagers.screenRoute);
        });
  }

  Container buttondesign(
    BuildContext context,
    double containerWidth,
    Color color1,
    Color color2,
    Color shadowColor,
    Icon iconType,
    String btn_titre,
    double fonSize,
    Color btn_text_color,
    Function onTap,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width - containerWidth,
      height: 60,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconType,
          GestureDetector(
            onTap: () => onTap(),
            // {
            // print("hello .............");
            // },
            child: Text(
              btn_titre,
              textAlign: TextAlign.left,
              style: TextStyle(
                // fontFamily: "Netflix",
                fontWeight: FontWeight.w700,
                fontSize: fonSize,
                // letterSpacing: 0.0,
                // color: Colors.white,
                color: btn_text_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
