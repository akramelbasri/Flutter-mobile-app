import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Admin_dashboard.dart';

class AddPayement extends StatefulWidget {
  static const screenRoute = "/AddPaiement";

  @override
  State<AddPayement> createState() => _AddPayementState();
}

class _AddPayementState extends State<AddPayement> {
  // const AddPayement({Key? key}) : super(key: key);
  TextEditingController EtudiantCin = TextEditingController();

  TextEditingController EtudiantMontant = TextEditingController();

  TextEditingController InscrireAnnee = TextEditingController();

  TextEditingController InscrireMois = TextEditingController();

  TextEditingController InscrireJour = TextEditingController();

  // identify keys :
  final formKey = GlobalKey<FormState>();

  var SelectedFormation = "Développement Web – البرمجة المعلوماتية";

  List<String> formations = [
    "Développement Web – البرمجة المعلوماتية",
    "TÉLÉPHONIQUE – إصلاح الهواتف النقالة",
    "INFORMATIQUE – المعلوميات المكتبية",
    "CUISINE – الطبخ",
    "PÂTISSERIE – الحلويات العصرية",
    "TÉLÉSURVEILLANCE – تركيب كاميرات المراقبة و اجهزة الانذار",
    "MENUISERIE ALUMINIUM – نجارة الألمنيوم",
    "SOUDURE – تكوين في اللحام",
    "STYLISME & MODÉLISME – الخياطة و الفصالة",
    "ELECTRICITÉ BÂTIME,NT – الكهرباء المعمارية و الصناعية",
    "AIDE PHARMACIE – مساعد صيدلي",
    "Assistante médicale – السكرتارية الطبية",
    "Assistante sociale – مساعد اجتماعي",
    "Premiers Secours – الإسعافات الأولية",
    "FITNESS – مدربي اللياقة البدنية و كمال الأجسام",
    "EDUCATION PHYSIQUE – اساتذة التربية البدنية",
    "LES LANGUES – ANGLAIS",
    "LES LANGUES – FRANÇAIS",
    "LES LANGUES – ALLEMAGNE",
    "CENTRE D’APPEL – تكوين في مراكز الاتصال",
    "RÉCEPTION HÔTELIÈRE – تكوين استقبال الفندق",
    "COMPTABILITÉ – المحاسبة و التسيير",
    "INFOGRAPHISTE – الطباعة المعلوماتية",
    "Éducatrice de la petite enfance – مربية الأطفال",
    "تكوين مهن التدريس تحث إشراف مفتش تربوي– الاساتذة للتعليم الخصوصي والعمومي",
    "DIAGNOSTIQUE AUTOMOBILE – تشخيص الإلكتروني للسيارات",
    "Programmation Automobile – برمجة عقول السيارات",
    "Secrétariat administratif – السكرتارية الإدارية",
    "Logistique – النقل و اللوجستيك",
    "Qualité – مراقبة الجودة",
    "Clark chariot élévateur c3 – الرافعات الشوكية",
    "Service Restauration (Serveur / Serveuse) – خدمة تموين (نادل / نادلة)",
    "Tâpisserie – صناعة الافرشة العصرية",
    "Produits Cosmétiques – صناعة مستحضرات التجميل,"
        "تكوين سيارة الإسعاف",
    "Coiffure Homme – الحلاقة للرجال",
    "التجارة الإلكرونية",
    "تكوين في المجال الفلاحي",
    "FORMATION GENERAL",
    "الحجامة الطبية",
    "الحلاقة والتجميل النساء",
    "أنظمة الجودة الفلاحية",
    "الدعم المدرسي والجامعي",
    "infirmière métier de travail",
    "كراء قاعات للندوات والإجتماعات",
    "ISO14001 VERSIO 2015"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Add payement ",
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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 270,
                margin: EdgeInsets.only(bottom: 20),
                child: Image(
                  image: AssetImage("images/addPayement.png"),
                ),
              ),
              Container(
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        // cin :
                        CreerInputText(
                            context,
                            30,
                            EtudiantCin,
                            "Etudiant Cin",
                            Icon(
                              Icons.person,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        // montant :
                        inputNumber(
                            context,
                            30,
                            EtudiantMontant,
                            "Montant",
                            Icon(
                              Icons.money,
                              size: 30,
                              color: Color.fromARGB(255, 92, 92, 92)
                                  .withOpacity(.9),
                            ),
                            Color.fromARGB(255, 177, 234, 253).withOpacity(0.2),
                            14),
                        SizedBox(
                          height: 15,
                        ),
                        // date de paie :
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Date De Payer : ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            inputNumber(
                                context,
                                MediaQuery.of(context).size.width / 2 +
                                    MediaQuery.of(context).size.width / 10,
                                InscrireAnnee,
                                "année",
                                Icon(
                                  Icons.event,
                                  size: 30,
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                Color.fromARGB(255, 177, 234, 253)
                                    .withOpacity(0.2),
                                14),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            inputNumber(
                                context,
                                MediaQuery.of(context).size.width / 2 +
                                    MediaQuery.of(context).size.width / 10,
                                InscrireMois,
                                "mois",
                                Icon(
                                  Icons.event,
                                  size: 30,
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                Color.fromARGB(255, 177, 234, 253)
                                    .withOpacity(0.2),
                                14),
                            inputNumber(
                                context,
                                MediaQuery.of(context).size.width / 2 +
                                    MediaQuery.of(context).size.width / 10,
                                InscrireJour,
                                "jour",
                                Icon(
                                  Icons.event,
                                  size: 30,
                                  color: Color.fromARGB(255, 92, 92, 92)
                                      .withOpacity(.9),
                                ),
                                Color.fromARGB(255, 177, 234, 253)
                                    .withOpacity(0.2),
                                14),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: DropdownButtonHideUnderline(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14),
                                      bottomRight: Radius.circular(14),
                                      topRight: Radius.circular(14),
                                      bottomLeft: Radius.circular(14),
                                    ),
                                    color: Colors.grey[50],
                                    border: Border.all(
                                        width: 1,
                                        color:
                                            Color.fromARGB(255, 56, 138, 254)),
                                  ),
                                  width: MediaQuery.of(context).size.width - 30,
                                  height: 70,
                                  padding: EdgeInsets.all(10),
                                  child: DropdownButton(
                                    dropdownColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    onChanged: (value) {
                                      setState(() {
                                        SelectedFormation = value as String;
                                      });
                                    },
                                    value: SelectedFormation,
                                    items: formations.map((items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items,
                                            style: TextStyle(fontSize: 20),
                                          ));
                                    }).toList(),
                                  ))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 30,
                            height: 55,
                            child: RaisedButton(
                                splashColor: Color.fromARGB(230, 181, 245, 255),
                                color: Color.fromARGB(255, 0, 104, 3)
                                    .withOpacity(.8),
                                padding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                onPressed: () {
                                  final isValidate =
                                      formKey.currentState!.validate();
                                  if (isValidate) {
                                    // Navigator.pushNamedAndRemoveUntil(
                                    //     context,
                                    //     SucceesPageAddStager.screenRoute,
                                    //     (route) => false);
                                  } else {
                                    print("object Error");
                                  }
                                },
                                child: Text(
                                  "payer",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ))),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Container inputNumber(context, double margeMin, TextEditingController control,
      String textHint, Icon icon, Color color, double degre) {
    return Container(
      width: MediaQuery.of(context).size.width - margeMin,
      child: TextField(
        controller: control,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
            hintText: textHint,
            prefixIcon: icon,
            // labelText: labeltext,
            fillColor: color,
            // Color.fromARGB(255, 193, 250, 255)
            //     .withOpacity(0.2),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(degre))),
      ),
    );
  }

  Container CreerInputText(
      context,
      double margeMin,
      TextEditingController control,
      String textHint,
      Icon icon,
      Color InputbgColor,
      double raduis) {
    return Container(
      width: MediaQuery.of(context).size.width - margeMin,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "it's required champe , please.... ";
          } else {
            return null;
          }
        },
        controller: control,
        style: TextStyle(color: Color.fromARGB(179, 0, 0, 0), fontSize: 25),
        decoration: InputDecoration(
            hintText: textHint,
            prefixIcon: icon,
            fillColor: InputbgColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(raduis))),
      ),
    );
  }
}
