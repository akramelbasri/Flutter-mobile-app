import 'package:flutter/material.dart';

import '../Gestion_Admin_Pages/forms_inscription/Etudiant_Inscription.dart';

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
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Stager x",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    accountEmail: Text("stagerx@gmail.com",
                        style: TextStyle(
                            fontSize: 22, color: Color.fromARGB(255, 0, 0, 0))),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 25, 0, 138),
                      child: Text("St",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                  ),
                ),
                ListTile(
                  title: Text("Services", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.room_service_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed(AdminDashboard.screenRoute);
                    Navigator.pushNamedAndRemoveUntil(
                        context, stagerServices.screenRoute, (route) => false);
                  },
                ),
                Divider(
                  color: Color.fromARGB(255, 219, 241, 255),
                  thickness: 1,
                ),
                ListTile(
                  title: Text("Inscription", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.supervisor_account_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, EtudiantSignUp.screenRoute, (route) => false);
                  },
                ),
                ListTile(
                  title: Text("Payment", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.payments_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Absence", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.do_not_disturb_off_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Color.fromARGB(255, 245, 251, 255),
                  thickness: 1,
                ),
                // ListTile(
                //   title: Text("Stagers", style: TextStyle(fontSize: 22)),
                //   leading: Icon(
                //     Icons.groups_sharp,
                //     size: 30,
                //     color: Color.fromARGB(255, 189, 206, 217),
                //   ),
                // onTap: () {},
                // ),
                ListTile(
                  title: Text("Formation disponibles",
                      style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.menu_book_sharp,
                    size: 30,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onTap: () {},
                ),
                // ListTile(
                //   title: Text("Statistics", style: TextStyle(fontSize: 22)),
                //   leading: Icon(
                //     Icons.graphic_eq,
                //     size: 30,
                //     color: Color.fromARGB(255, 189, 206, 217),
                //   ),
                //   onTap: () {},
                // ),
                Divider(
                  color: Color.fromARGB(255, 189, 206, 217),
                  thickness: 1,
                ),
                ListTile(
                  title: Text("logout", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.logout_sharp,
                    size: 30,
                    color: Color.fromARGB(255, 255, 83, 83),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, "/", (route) => false);
                  },
                ),
              ],
            ),
          ),
        ),
        body:
            // SingleChildScrollView(
            // child: Column(
            //   children: [
            //     SizedBox(
            //       height: 17,
            //     ),
            //     Center(
            //       child: Container(
            //         child: Text(
            //           " Services ",
            //           style: TextStyle(
            //               fontSize: 30,
            //               fontWeight: FontWeight.bold,
            //               // fontWeight: FontWeight.bold,
            //               color: Color.fromARGB(221, 0, 64, 255)),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       padding: EdgeInsets.all(20),
            //       child: GridView.count(
            //         shrinkWrap:
            //             true, // pour Eliminer l'error de succesive blocks of widgets;
            //         crossAxisCount: 2,
            //         children: [
            //           card_widget(
            //               Icon(
            //                 Icons.home,
            //                 size: 75,
            //                 color: Colors.blue,
            //               ),
            //               "Home",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.school,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 255, 202, 26),
            //               ),
            //               "About School",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.book,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 0, 221, 255),
            //               ),
            //               "Formation",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.inventory_sharp,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 9, 124, 122),
            //               ),
            //               "Inscription",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.attach_money_sharp,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 9, 16, 97),
            //               ),
            //               "Payement", () {
            //             Navigator.of(context)
            //                 .pushNamed(EtudiantSignUp.screenRoute);
            //           }),
            //           card_widget(
            //               Icon(
            //                 Icons.group_add_outlined,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 0, 171, 9),
            //               ),
            //               "Stagers",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.category,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 255, 136, 241),
            //               ),
            //               "Category",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.maps_home_work_outlined,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 119, 0, 223),
            //               ),
            //               "Location",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.watch_later_outlined,
            //                 size: 75,
            //                 color: Colors.red[400],
            //               ),
            //               "Work Times",
            //               () {}),
            //           card_widget(
            //               Icon(
            //                 Icons.pie_chart_rounded,
            //                 size: 75,
            //                 color: Color.fromARGB(255, 234, 255, 0),
            //               ),
            //               "Charts",
            //               () {}),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // ),
            Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  " stager sevices page ",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              // CreerButton(context, "akram", 20, Color.fromARGB(255, 0, 89, 255),
              //     Color.fromARGB(255, 255, 255, 255), 10, 20, () {
              //   print("btn clicked .......");
              // }),
            ],
          ),
        ),
      ),
    );
  }

  // card widget function
  Card card_widget(Icon icon, String titre, Function onTap) {
    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap(),
        splashColor: Color.fromARGB(255, 78, 173, 255),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              titre,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
