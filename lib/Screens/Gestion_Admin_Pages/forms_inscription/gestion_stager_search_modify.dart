import 'package:flutter/material.dart';

import '../../Animation_s/Spinner.dart';
import '../../not_found_pages_And_succees/add_stager_msg_succees.dart';
import '../../not_found_pages_And_succees/not_found_addStager.dart';
import 'Search_stagerInfos.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stagers.dart';

class SearchAndModifyStager extends StatelessWidget {
  // const SearchAndModifyStager({Key? key}) : super(key: key);
  static const screenRoute = "SearchModifyStager";
  TextEditingController searchText = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Search And Modify",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            Container(
                height: 280,
                margin: EdgeInsets.only(bottom: 20),
                child: Image(
                  image: AssetImage("images/saerch_stager.png"),
                )),
            Form(
              key: formKey,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Search via Cin Or Name Complete";
                    } else {
                      return null;
                    }
                  },
                  controller: searchText,
                  style: TextStyle(
                      color: Color.fromARGB(179, 0, 0, 0), fontSize: 25),
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color:
                            Color.fromARGB(255, 128, 128, 128).withOpacity(.9),
                      ),
                      suffixIcon: Icon(
                        Icons.star_border_purple500_rounded,
                        size: 22,
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(.8),
                      ),
                      fillColor:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(.7),
                      filled: true,
                      // labelText: "Cin or Name ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 55,
                child: RaisedButton(
                    splashColor: Color.fromARGB(230, 181, 245, 255),
                    color: Color.fromARGB(255, 24, 178, 255),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      final isValidate = formKey.currentState!.validate();
                      if (isValidate) {
                        // Navigator.pushNamedAndRemoveUntil(context,
                        //     StagerSearchInfos.screenRoute, (route) => false);
                        // Navigator.of(
                        //     context, Spinner.screenRoute, (route) => false);
                        Navigator.of(context).pushNamed(Spinner.screenRoute);
                      } else {
                        print(".......... Error .............");
                      }
                    },
                    child: Text(
                      "Search",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        // fontWeight: FontWeight.bold
                      ),
                    ))),
          ]))),
    ));
  }
}
