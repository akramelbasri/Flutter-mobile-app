import 'package:flutter/material.dart';

import '../Admin_dashboard.dart';

class aboutSchool extends StatelessWidget {
  const aboutSchool({Key? key}) : super(key: key);
  static const screenRoute = "/aboutSchool";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, AdminDashboard.screenRoute, (route) => false);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: const Color.fromARGB(255, 255, 255, 255),
              size: 34,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.groups_sharp,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 37,
              )),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 15, // add shadow
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
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
                          height: 350,
                          image: const AssetImage("images/ima.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Institut IMA",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(.9)),
                          ),
                         
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "General ",
                            style: const TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(137, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 0, 0, 0),
                            thickness: 3,
                          ),
                          CreateListeTile(
                            Icon(
                              Icons.thumb_up_rounded,
                              size: 32,
                              color: const Color.fromARGB(255, 89, 104, 176)
                                  .withOpacity(.8),
                            ),
                            const Text("14 478 personnes aiment ça",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          CreateListeTile(
                            Icon(
                              Icons.notifications_active_outlined,
                              size: 32,
                              color: const Color.fromARGB(255, 89, 104, 176)
                                  .withOpacity(.8),
                            ),
                            const Text("15 125 personnes sont abonnées",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          CreateListeTile(
                            Icon(
                              Icons.visibility_sharp,
                              size: 32,
                              color: const Color.fromARGB(255, 89, 104, 176)
                                  .withOpacity(.8),
                            ),
                            const Text("32 personnes ont visité ce lieu",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          CreateListeTile(
                            Icon(
                              Icons.school_outlined,
                              size: 32,
                              color: const Color.fromARGB(255, 89, 104, 176)
                                  .withOpacity(.8),
                            ),
                            const Text("École", style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text("COORDONNÉES SUPPLÉMENTAIRES",
                              style: const TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(137, 0, 0, 0),
                                  fontWeight: FontWeight.bold)),
                          const Divider(
                            color: Color.fromARGB(255, 0, 0, 0),
                            thickness: 3,
                          ),
                          CreateListeTile(
                            const Icon(
                              Icons.phone,
                              size: 32,
                              color: Color.fromARGB(222, 0, 0, 0),
                            ),
                            const Text("05282-39873",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          CreateListeTile(
                            const Icon(
                              Icons.email_outlined,
                              size: 32,
                              color: Color.fromARGB(222, 0, 0, 0),
                            ),
                            const Text("institutimastf@gmail.com",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          CreateListeTile(
                            const Icon(
                              Icons.whatsapp,
                              size: 32,
                              color: Color.fromARGB(222, 0, 0, 0),
                            ),
                            const Text("+212 626-400022",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          CreateListeTile(
                            const Icon(
                              Icons.public,
                              size: 32,
                              color: Color.fromARGB(222, 0, 0, 0),
                            ),
                            const Text(
                                "https://maps.app.goo.gl/PJof8WyvEkdRZKud9",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text("PLUS D’INFORMATIONS",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: const Color.fromARGB(137, 0, 0, 0),
                                  fontWeight: FontWeight.bold)),
                          const Divider(
                            color: Color.fromARGB(255, 0, 0, 0),
                            thickness: 3,
                          ),
                          CreateListeTile(
                            const Icon(
                              Icons.info,
                              size: 30,
                              color: Color.fromARGB(255, 125, 126, 131),
                            ),
                            const Text("À propos",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          RichText(
                              text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "INSTITUT IMA STF",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 0, 8, 113),
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text:
                                      " de L'education et de formation professionnelle de renommée est fondé en 2016 par des lauréats de l’université \n ",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.black,
                                  )),
                            ],
                          )),
                          const SizedBox(
                            height: 13,
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 0, 0, 0),
                            thickness: 1,
                          ),
                          CreateListeTile(
                            const Icon(
                              Icons.info,
                              size: 30,
                              color: Color.fromARGB(255, 125, 126, 131),
                            ),
                            const Text("Informations supplémentaires \n  ",
                                style: TextStyle(fontSize: 22)),
                            () {},
                          ),
                          RichText(
                              text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "L’institut IMA ",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 0, 8, 113),
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                text:
                                    " de formation professionnelle de renommée est fondé en 2016 par des lauréats de l’université Ibn Zohr. \n  ",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "      \t Sa mission ? \n",
                                style: TextStyle(
                                  fontSize: 24,
                                    color: Color.fromARGB(255, 78, 77, 77) ,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "L’institut s’est vu confier, la responsabilité d’assurer des formations de qualité aux jeunes étudiants de la ville d’Agadir et les préparer à la fois pour réussir leurs examens et à la fois pour assurer leurs avenirs et booster leurs carrières académiques et professionnelles. \n",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Pour accomplir ces missions-là, l’institut IMA met à la disposition de ses stagiaires et ses étudiants des équipes pédagogiques qualifiées et assure un environnent d’apprentissage favorable répondant à leurs attentes individuelles et collectives.",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )),
                          
                          const SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  ListTile CreateListeTile(Icon icon, Text txt, Function onTap) {
    return ListTile(
      title: txt,
      leading: icon,
      onTap: () => onTap(),
      // () {
      //   Navigator.pushNamedAndRemoveUntil(
      //       context, AdminDashboard.screenRoute, (route) => false);
      // },
    );
  }
}
