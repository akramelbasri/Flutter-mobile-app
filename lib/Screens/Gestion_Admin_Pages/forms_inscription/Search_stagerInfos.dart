import 'package:flutter/material.dart';

import 'gestion_stager_search_modify.dart';

class StagerSearchInfos extends StatelessWidget {
  // const StagerSearchInfos({Key? key}) : super(key: key);
  static const screenRoute = "/Infos";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search Result",
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
               Navigator.pushNamedAndRemoveUntil(context,
                    SearchAndModifyStager.screenRoute, (route) => false);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 34,
            )),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamedAndRemoveUntil(context,
                //     NotFoundPageAddStager.screenRoute, (route) => false);
              },
              icon: Icon(
                Icons.groups_sharp,
                // color: Color.fromARGB(255, 4, 255, 242),
                color: Colors.white,
                size: 37,
              )),
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            "Stager information & modification",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
