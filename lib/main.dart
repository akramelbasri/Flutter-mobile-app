// import 'dart:js_util';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/accueil.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/Flash_msg.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/gestion_stagers.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/signup2.dart';
import 'package:prj1_image_bg/Screens/Gestion_stagers_pages/stager_acceil.dart';
import 'Screens/Animation_s/Spinner.dart';
import 'Screens/Gestion_Admin_Pages/Categorie_of_formation.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/About_School.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/Add_Paiment.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/Search_stagerInfos.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/gestion_payement.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/gestion_stager_search_modify.dart';
import 'Screens/not_found_pages_And_succees/Not_found_page_admin.dart';
import 'Screens/Gestion_Admin_Pages/admin_infos.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/Etudiant_Inscription.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/add_stager.dart';
import 'Screens/Gestion_stagers_pages/stager_login.dart';
import 'Screens/Gestion_Admin_Pages/Admin_dashboard.dart';
import '../widgets/app_Drawer.dart';
import 'Screens/Gestion_stagers_pages/stager_services.dart';
import 'Screens/not_found_pages_And_succees/add_stager_msg_succees.dart';
import 'Screens/not_found_pages_And_succees/not_found_addStager.dart';

void main() {
  // Future<void> main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await Firebase.initializeApp();
  runApp((MyApp()));
  // }
}

// --------- page 1 -----------
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Named Routes Demo",
      // routes :
      initialRoute: "/",
      routes: {
        // Home page :
        homePage.screenRoute: (ctx) => homePage(),
        //  Admin : Gestion des services :
        admin_login.screenRoute: (context) => admin_login(),
        stagersPage.screenRoute: (context) => stagersPage(),
        AdminDashboard.screenRoute: (context) => AdminDashboard(),
        NotFoundPage.screenRoute: (context) => NotFoundPage(),
        AcceilPage.screenRoute: (context) => AcceilPage(),
        // gestion d'inscription :
        EtudiantSignUp.screenRoute: (context) => EtudiantSignUp(),
        singnup2.screenRoute: (context) => singnup2(),
        FlashMsg.screenRoute: (context) => FlashMsg(),
        // gestion des stager :
        stagerAcceil.screenRoute: (context) => stagerAcceil(),
        stagerServices.screenRoute: (context) => stagerServices(),
        gestionStagers.screenRoute: (context) => gestionStagers(),
        AddStager.screenRoute: (context) => AddStager(),
        NotFoundPageAddStager.screenRoute: (context) => NotFoundPageAddStager(),
        SucceesPageAddStager.screenRoute: (context) => SucceesPageAddStager(),
        // Search and modify stager route :
        SearchAndModifyStager.screenRoute: (context) => SearchAndModifyStager(),
        StagerSearchInfos.screenRoute: (context) => StagerSearchInfos(),
        Spinner.screenRoute: (context) => Spinner(),
        //Formation categories
        categoriesFormation.screenRoute: (context) => categoriesFormation(),
        gestionPaiement.screenRoute: (context) =>
            gestionPaiement(), // gestion de payement
        AddPayement.screenRoute: (context) => AddPayement(), // add payement
        aboutSchool.screenRoute: (context) => aboutSchool(), // about ima
      },
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);
  static const screenRoute = "/";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
            title: Text(
              "Menu",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 23,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 31, 2, 100)),
        drawer: appDrawer(), // classe realiser
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/ima.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 4,
            ),
            // buttons :
            Center(
              child: buttondesign(
                  context,
                  20,
                  Color.fromARGB(255, 26, 0, 194),
                  Color.fromARGB(255, 18, 17, 17),
                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
                  Icon(
                    Icons.group_sharp,
                    size: 32,
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(.9),
                  ),
                  " admin Account ",
                  25,
                  Colors.white, () {
                Navigator.pushNamedAndRemoveUntil(
                    context, admin_login.screenRoute, (route) => false);
              }),
            ),

            // ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: buttondesign(
                  context,
                  20,
                  Color.fromARGB(255, 26, 0, 194),
                  Color.fromARGB(255, 18, 17, 17),
                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.6),
                  Icon(
                    Icons.group_sharp,
                    size: 32,
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(.9),
                  ),
                  " Stager Account ",
                  25,
                  Colors.white, () {
                Navigator.pushNamedAndRemoveUntil(
                    context, stagersPage.screenRoute, (route) => false);
              }),
            ),
          ],
        ),
      ),
    );
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
            Radius.circular(5),
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

// ================= bottom  Navigation bar de 3 pages =========
// class bottom_navigation extends StatefulWidget {
//   const bottom_navigation({Key? key}) : super(key: key);

//   @override
//   State<bottom_navigation> createState() => _bottom_navigationState();
// }

// class _bottom_navigationState extends State<bottom_navigation> {
//   int index = 0;
//   final pages = [
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
//               selectedIcon: Icon(Icons.home),
//               label: "Gallery",
//             ),
//             NavigationDestination(
//               icon: Icon(Icons.history_outlined),
//               selectedIcon: Icon(Icons.home),
//               label: "History",
//             ),
//           ]),
//     );
//   }
// }

// fin bottom  Navigation bar de 3

// drawer: Drawer(
// child: Text(
// " its a Menu Bar ",
// style: TextStyle(fontSize: 35),
// ),
// ),

// ----------- programme permet de route transfere ---------------------
// void main() {
//   runApp(MyApp());
// }

// // --------- page 1 -----------
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 255, 255, 255),
//         appBar: AppBar(
//             title: Text(
//               "Menu",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.normal,
//                 fontSize: 23,
//               ),
//             ),
//             backgroundColor: Color.fromARGB(255, 31, 2, 100)),
//         drawer: Drawer(
//           child: Text(
//             " Sign in ",
//             style: TextStyle(fontSize: 35),
//           ),
//         ),
//         // body: Center(
//         //   child: Image(
//         //     image: AssetImage('images/ima.png'),
//         //   ),

//         // ),
//         // ============ input test ===============
//         body: new Home(),
//         // ==================fin test ============
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var _textController = new TextEditingController();
//   var router;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: new Column(
//         children: [
//           TextField(
//             style: TextStyle(
//               fontSize: 30,
//             ),
//             controller: _textController,
//             decoration: new InputDecoration(
//               labelText: 'Entrer your name',
//             ),
//           ),
//           new RaisedButton(
//             child: new Text('submit'),
//             onPressed: () => {
//               router = new MaterialPageRoute(
//                   builder: (BuildContext context) =>
//                       secondScreen(_textController.text)),
//               Navigator.of(context).push(router),
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class secondScreen extends StatefulWidget {
//   final String name;
//   secondScreen(this.name);

//   @override
//   State<secondScreen> createState() => _secondScreenState();
// }

// class _secondScreenState extends State<secondScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       appBar: AppBar(
//           title: Text(
//             "Menu",
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.normal,
//               fontSize: 23,
//             ),
//           ),
//           backgroundColor: Color.fromARGB(255, 31, 2, 100)),
//       drawer: Drawer(
//         child: Text(
//           " Sign in ",
//           style: TextStyle(fontSize: 35),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           child: Text("welcom Ms : ${widget.name} "),
//         ),
//       ),
//     );
//   }
// }
// ----------------- fin programme ------------------------
