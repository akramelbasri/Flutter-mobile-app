import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/Admin_dashboard.dart';

class categoriesFormation extends StatelessWidget {
  const categoriesFormation({Key? key}) : super(key: key);
  static const screenRoute = "/Categories";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "formation categories",
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
                    context, AdminDashboard.screenRoute, (route) => false);
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
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  print("hello Word !!!!");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 25,
                  child: categoryCard(
                      context,
                      20,
                      "images/informatique.jpg",
                      200,
                      Text(
                        " Informatique ",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                      ),
                      "Front-end",
                      "Back-end",
                      40),
                ),
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width - 25,
              //   child: categoryCard(
              //       context,
              //       20,
              //       "images/informatique.jpg",
              //       200,
              //       Text(
              //         " Informatique ",
              //         style: TextStyle(
              //             fontSize: 28,
              //             fontWeight: FontWeight.bold,
              //             color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
              //       ),
              //       "Front-end",
              //       "Back-end",
              //       40),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, AdminDashboard.screenRoute, (route) => false);
                  },
                  child: categoryCard(
                      context,
                      20,
                      "images/commerce.png",
                      200,
                      Text(
                        " Commerce ",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color:
                                Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                      ),
                      "E-commerce",
                      "commerce",
                      40),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/Education.jpg",
                    200,
                    Text(
                      "Education & languages",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "Eduction formation",
                    "languages formation",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/business.png",
                    200,
                    Text(
                      " Business ",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "invistisement",
                    "shopping",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/electronic.png",
                    200,
                    Text(
                      "Electronique",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "ELECTRICITÉ BÂTIMENT",
                    "TÉLÉSURVEILLANCE",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/restaurant.png",
                    200,
                    Text(
                      "Restaurant",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "cuisine",
                    "Patisserie",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/sport.png",
                    200,
                    Text(
                      "Sports",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "Fitness",
                    "Physique Education",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/agriculture.png",
                    200,
                    Text(
                      " Agriculture ",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "vigital",
                    "viande..",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/handcraft.jpg",
                    200,
                    Text(
                      "HandCrafts",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "Modern",
                    "traditional",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/medcine.jpg",
                    200,
                    Text(
                      "Medcine",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "Pharmacie",
                    "Premiers Secours",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/beaty.png",
                    200,
                    Text(
                      "Beauty",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    " Women's shaving and beauty ",
                    " cosmitec products ",
                    40),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 25,
                child: categoryCard(
                    context,
                    20,
                    "images/service.png",
                    200,
                    Text(
                      "Services",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(.9)),
                    ),
                    "divercity",
                    "local",
                    40),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("add category...");
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Card categoryCard(context, double shadow, String Url, double ImageHeight,
      Text CategoryTitle, String text2, String text3, double iconSize) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: shadow, // add shadow
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image + title
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Ink.image(
                  height: ImageHeight,
                  image: AssetImage(Url),
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryTitle,
                  Text(
                    text2,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    text3,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ],
              ),
            ),
            ButtonBar(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.details,
                          size: 40,
                          color: Colors.blue[200],
                        )),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.emoji_emotions_outlined,
                              size: iconSize),
                          color: Color.fromARGB(255, 0, 159, 5).withOpacity(.7),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.mood_bad,
                            size: iconSize,
                          ),
                          color: Color.fromARGB(255, 251, 0, 0).withOpacity(.7),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
