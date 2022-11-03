import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/Etudiant_Inscription.dart';
import 'package:prj1_image_bg/main.dart';
import '/widgets/app_Drawer.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stagers.dart';
import 'Categorie_of_formation.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_payement.dart';
import './forms_inscription/About_School.dart';

class AdminDashboard extends StatelessWidget {
  // const AdminDashboard({Key? key}) : super(key: key);
  static const screenRoute = "/AdminEspace";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 241, 241),
        appBar: AppBar(
          title: Text("menu"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active))
          ],
          backgroundColor: Color.fromARGB(255, 13, 0, 255),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Abdellah el Martoub",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text("abdellah@gmail.com",
                        style: TextStyle(fontSize: 23)),
                    // currentAccountPicture: CircleAvatar(
                    //   backgroundColor: Colors.orange,
                    //   child: Text("Admin"),
                    // ),
                  ),
                ),
                ListTile(
                  title: Text("Home", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.home_filled,
                    size: 30,
                    color: Color.fromARGB(255, 13, 23, 158),
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, AdminDashboard.screenRoute, (route) => false);
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
                    color: Color.fromARGB(255, 129, 198, 254),
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
                    color: Color.fromARGB(255, 129, 198, 254),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Absence", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.do_not_disturb_off_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 129, 198, 254),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Color.fromARGB(255, 219, 241, 255),
                  thickness: 1,
                ),
                ListTile(
                  title: Text("Stagers", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.groups_sharp,
                    size: 30,
                    color: Color.fromARGB(255, 189, 206, 217),
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, gestionStagers.screenRoute, (route) => false);
                  },
                ),
                ListTile(
                  title: Text("Formation disponibles",
                      style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.menu_book_sharp,
                    size: 30,
                    color: Color.fromARGB(255, 203, 216, 226),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Statistics", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.graphic_eq,
                    size: 30,
                    color: Color.fromARGB(255, 189, 206, 217),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Color.fromARGB(255, 189, 206, 217),
                  thickness: 1,
                ),
                ListTile(
                  title: Text("logout", style: TextStyle(fontSize: 22)),
                  leading: Icon(
                    Icons.logout_sharp,
                    size: 30,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamedAndRemoveUntil(
                        context, homePage.screenRoute, (route) => false);
                  },
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 17,
              ),
              Center(
                child: Container(
                  child: Text(
                    " Services ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        // fontWeight: FontWeight.bold,
                        color: Color.fromARGB(221, 0, 64, 255)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: GridView.count(
                  shrinkWrap:
                      true, // pour Eliminer l'error de succesive blocks of widgets;
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, homePage.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.home,
                            size: 75,
                            color: Colors.blue,
                          ),
                          "Home",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, aboutSchool.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.school,
                            size: 75,
                            color: Color.fromARGB(255, 255, 202, 26),
                          ),
                          "About School",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, EtudiantSignUp.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.book,
                            size: 75,
                            color: Color.fromARGB(255, 0, 221, 255),
                          ),
                          "Formation",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            EtudiantSignUp.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.inventory_sharp,
                            size: 75,
                            color: Color.fromARGB(255, 9, 124, 122),
                          ),
                          "Inscription",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            gestionPaiement.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.attach_money_sharp,
                            size: 75,
                            color: Color.fromARGB(255, 9, 16, 97),
                          ),
                          "Payement",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            gestionStagers.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.group_add_outlined,
                            size: 75,
                            color: Color.fromARGB(255, 0, 171, 9),
                          ),
                          "Stagers",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            categoriesFormation.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.category,
                            size: 75,
                            color: Color.fromARGB(255, 255, 136, 241),
                          ),
                          "Category",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, EtudiantSignUp.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.maps_home_work_outlined,
                            size: 75,
                            color: Color.fromARGB(255, 119, 0, 223),
                          ),
                          "Location",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, EtudiantSignUp.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.watch_later_outlined,
                            size: 75,
                            color: Colors.red[400],
                          ),
                          "Work Times",
                          () {}),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamedAndRemoveUntil(
                        //     context, EtudiantSignUp.screenRoute, (route) => false);
                      },
                      child: card_widget(
                          Icon(
                            Icons.pie_chart_rounded,
                            size: 75,
                            color: Color.fromARGB(255, 234, 255, 0),
                          ),
                          "Charts",
                          () {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: bottom_navigation(),
      ),
    );
  }

  // card widget function
  Card card_widget(Icon icon, String titre, Function onTap) {
    return Card(
      shadowColor: Color.fromARGB(221, 136, 136, 136).withOpacity(.7),
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















// ================= bottom  Navigation bar de 3 pages =========
// class bottom_navigation extends StatefulWidget {
//   const bottom_navigation({Key? key}) : super(key: key);

//   @override
//   State<bottom_navigation> createState() => _bottom_navigationState();
// }

// class _bottom_navigationState extends State<bottom_navigation> {
//   int index = 0;
//   final pages = [
//     Center(
//       child: Container(
//           child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.admin_panel_settings_outlined,
//             color: Colors.black87,
//             size: 30,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Text(
//             "Admin Espace",
//             style: TextStyle(
//                 fontSize: 20,
//                 // fontWeight: FontWeight.bold,
//                 color: Colors.black87),
//           ),
//         ],
//       )),
//     ),
//     Center(child: Text("page 1", style: TextStyle(fontSize: 35))),
//     Center(child: Text("page 2", style: TextStyle(fontSize: 35))),
//     Center(child: Text("page 3", style: TextStyle(fontSize: 35))),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[index],
//       bottomNavigationBar: NavigationBar(
//           height: 60,
//           selectedIndex: index,
//           onDestinationSelected: (index) => setState(() => this.index = index),
//           destinations: [
//             NavigationDestination(
//               icon: Icon(Icons.home_outlined),
//               selectedIcon: Icon(Icons.home),
//               label: "Home",
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.browse_gallery),
//               selectedIcon: Icon(Icons.room_service_outlined),
//               label: "Services",
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.category_outlined),
//               selectedIcon: Icon(Icons.home),
//               label: "Formation",
//             ),
//           ]),
//     );
//   }
// }

// fin bottom  Navigation bar de 3

