// import 'dart:js';

import 'package:flutter/material.dart';
import '../Screens/Gestion_stagers_pages/stager_login.dart';
import '../Screens/Gestion_Admin_Pages/admin_infos.dart';

class appDrawer extends StatelessWidget {
  const appDrawer({Key? key}) : super(key: key);
// fonction
  ListTile buildListTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 38,
        color: Color.fromARGB(255, 255, 200, 0),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () => onTapLink(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 50),
          child: Text(
            "Sign in ",
            style: TextStyle(
              fontSize: 36,
              color: Color.fromARGB(255, 55, 1, 181),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Divider(
          color: Color.fromARGB(255, 0, 7, 131).withOpacity(.2),
          thickness: 1,
          height: 45,
        ),
        SizedBox(height: 20),
        // liste Tile 2
        buildListTile("Admin account", Icons.account_circle, () {
          Navigator.of(context).pushNamed(admin_login.screenRoute);
        }),
        SizedBox(height: 10),
        // liste Tile 2
        buildListTile("Stagers accounts", Icons.supervisor_account_rounded, () {
          Navigator.of(context).pushNamed(stagersPage.screenRoute);
        })
      ],
    ));
  }
}
