// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/accueil.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/Flash_msg.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/signup2.dart';
import 'package:prj1_image_bg/Screens/Gestion_stagers_pages/stager_acceil.dart';
import 'Screens/Gestion_Admin_Pages/Not_found_page.dart';
import 'Screens/Gestion_Admin_Pages/admin_infos.dart';
import 'Screens/Gestion_Admin_Pages/forms_inscription/Etudiant_Inscription.dart';
import 'Screens/Gestion_stagers_pages/stager_login.dart';
import 'Screens/Gestion_Admin_Pages/Admin_dashboard.dart';
import '../widgets/app_Drawer.dart';
import 'Screens/Gestion_stagers_pages/stager_services.dart';

void main() {
  runApp((MyApp()));
}

// --------- page 1 -----------
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Named Routes Demo",
      // routes :
      initialRoute: "/",
      routes: {
        '/': (ctx) => homePage(),
        admin_login.screenRoute: (context) => admin_login(),
        stagersPage.screenRoute: (context) => stagersPage(),
        AdminDashboard.screenRoute: (context) => AdminDashboard(),
        NotFoundPage.screenRoute: (context) => NotFoundPage(),
        AcceilPage.screenRoute: (context) => AcceilPage(),
        EtudiantSignUp.screenRoute: (context) => EtudiantSignUp(),
        singnup2.screenRoute: (context) => singnup2(),
        FlashMsg.screenRoute: (context) => FlashMsg(),
        stagerAcceil.screenRoute: (context) => stagerAcceil(),
        stagerServices.screenRoute: (context) => stagerServices(),
      },
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

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
        body: Center(
          child: Image(
            image: AssetImage('images/ima.png'),
          ),
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
