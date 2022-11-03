import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/Flash_msg.dart';
import 'package:prj1_image_bg/Screens/Gestion_Admin_Pages/forms_inscription/Get_First_Last_Name.dart';
import 'Get_First_Last_Name.dart';

class singnup2 extends StatefulWidget {
  // const singnup2({Key? key}) : super(key: key);
  static const screenRoute = "/signup2";

  @override
  State<singnup2> createState() => _singnup2State();
}

class _singnup2State extends State<singnup2> {
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
  String gender = "male";
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController cin = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController dateInscription = TextEditingController();
  TextEditingController dateNaissance = TextEditingController();
  DateTime _dateNaissance = DateTime.now();
  DateTime _RegistrationDate = DateTime.now();
  final formKey = GlobalKey<FormState>();
  final _ScaffoldKey = GlobalKey<ScaffoldState>();

  // String _dateNaissance = "";
  // TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // getArgs PassedArgs = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        key: _ScaffoldKey,
        appBar: AppBar(
          title: Text("Inscription"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          child: Image(
                            image: AssetImage("images/signup3.jpg"),
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // Email
                        TextFormField(
                          controller: email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this is required";
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                size: 30,
                                color: Color.fromARGB(95, 0, 0, 0),
                              ),
                              labelText: " Email : ",
                              fillColor: Color.fromARGB(255, 193, 250, 255)
                                  .withOpacity(0.2),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //  phone
                        TextField(
                          controller: phone,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              hintText: "phone",
                              prefixIcon: Icon(
                                Icons.add_call,
                                size: 30,
                                color: Color.fromARGB(95, 0, 0, 0),
                              ),
                              labelText: "Phone : ",
                              fillColor: Color.fromARGB(255, 193, 250, 255)
                                  .withOpacity(0.2),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //  CIN
                        TextFormField(
                          controller: cin,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this is required";
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              hintText: "cin",
                              prefixIcon: Icon(
                                Icons.assignment_ind_outlined,
                                size: 30,
                                color: Color.fromARGB(95, 0, 0, 0),
                              ),
                              labelText: " CIN : ",
                              fillColor: Color.fromARGB(255, 193, 250, 255)
                                  .withOpacity(0.2),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //  Age
                        TextField(
                          controller: age,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                              hintText: "age",
                              prefixIcon: Icon(
                                Icons.hourglass_top,
                                size: 30,
                                color: Color.fromARGB(95, 0, 0, 0),
                              ),
                              labelText: "Age : ",
                              fillColor: Color.fromARGB(255, 193, 250, 255)
                                  .withOpacity(0.2),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // gender inputs (FormationSelected)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("gender :   ", style: TextStyle(fontSize: 25)),
                            Radio(
                                value: "male",
                                groupValue: gender,
                                onChanged: (newValue) {
                                  setState(() {
                                    gender = newValue as String;
                                  });
                                }),
                            Text("male", style: TextStyle(fontSize: 22)),
                            Radio(
                                value: "female",
                                groupValue: gender,
                                onChanged: (newValue) {
                                  setState(() {
                                    gender = newValue as String;
                                  });
                                }),
                            Text("female", style: TextStyle(fontSize: 25)),
                            // Text("value selected $FormationSelected ")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //  City
                        TextFormField(
                          controller: city,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this is required";
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: 25),
                          decoration: InputDecoration(
                            hintText: "city",
                            prefixIcon: Icon(Icons.add_location_alt),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40)),
                            ),
                            labelText: "City : ",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: DropdownButtonHideUnderline(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(40)),
                                    color: Colors.grey[50],
                                    border: Border.all(
                                        width: 1,
                                        color: Color.fromARGB(255, 56, 138, 254)),
                                  ),
                                  width: MediaQuery.of(context).size.width - 60,
                                  height: 60,
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
                                          value: items, child: Text(items));
                                    }).toList(),
                                  ))),
                        ),
                        SizedBox(height: 30),
                        // date de naissance :
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: IconButton(
                                      icon: Icon(Icons.date_range_rounded),
                                      iconSize: 35,
                                      // child: Text("salect"),
                                      onPressed: () {
                                        showDatePicker(
                                                context: context,
                                                initialDate:
                                                    // _dateNaissance == null
                                                    // ?
                                                    DateTime.now(),
                                                // : _dateNaissance,
                                                firstDate: DateTime(1950),
                                                lastDate: DateTime(3000))
                                            .then((date) {
                                          setState(() {
                                            _dateNaissance = date as DateTime;
                                          });
                                        });
                                        print(_dateNaissance
                                            .toString()
                                            .substring(0, 10));
                                      }),
                                ),
                                Text("Birth day :  ",
                                    style: TextStyle(fontSize: 25)),
                                Text(
                                  _dateNaissance.toString().substring(0, 10),
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                            SizedBox(height: 13),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SingleChildScrollView(
                                  child: Container(
                                    child: IconButton(
                                        icon: Icon(Icons.date_range_rounded),
                                        iconSize: 35,
                                        onPressed: () {
                                          showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(1950),
                                                  lastDate: DateTime(3000))
                                              .then((date) {
                                            setState(() {
                                              _RegistrationDate =
                                                  date as DateTime;
                                            });
                                          });
                                          print(_RegistrationDate.toString()
                                              .substring(0, 10));
                                        }),
                                  ),
                                ),
                                Text("registration :  ",
                                    style: TextStyle(fontSize: 25)),
                                Text(
                                  _RegistrationDate.toString().substring(0, 10),
                                  style: TextStyle(fontSize: 22),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // button
                        Container(
                          width: MediaQuery.of(context).size.width - 70,
                          child: RaisedButton(
                              child: Text(
                                "Enregistrer",
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              color: Color.fromARGB(255, 0, 119, 255)
                                  .withOpacity(.8),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  _ScaffoldKey.currentState!
                                      .showSnackBar(SnackBar(
                                    content: Text(" Saving...",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 253, 253, 253))),
                                  ));
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      FlashMsg.screenRoute, (route) => false);
                                  // connection a base de donnees
    
                                  // print("First name : " +
                                  //     PassedArgs.F_Name +
                                  //     "last name : " +
                                  //     PassedArgs.L_Name);
                                  // print(email);
                                  // print(phone);
                                  // print(cin);
                                  // print(age);
                                  // print(gender);
                                  // print(SelectedFormation);
                                  // print(city);
                                  print("date d'inscrire : " +
                                      _RegistrationDate.toString()
                                          .substring(0, 10));
                                  print("date de naissance : " +
                                      _dateNaissance.toString().substring(0, 10));
                                }
                              }),
                        ),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ),
        bottomSheet: Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width - 70),
            child: Text(
              "2/2",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 23, 42)),
            )),
      ),
    );
  }
}

// class selectedOption extends StatefulWidget {
//   const selectedOption({Key? key}) : super(key: key);

//   @override
//   State<selectedOption> createState() => _selectedOptionState();
// }

// class _selectedOptionState extends State<selectedOption> {
//   Object selectedFormation = 'algorithme';
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: DropdownButton(
//         items: ["algorithme", "commerce", "developement wsb"]
//             .map((e) => DropdownMenuItem(
//                   child: Text(e),
//                   value: e,
//                 ))
//             .toList(),
//         onChanged: (val) {
//           // print("$val");
//           setState(() {
//             selectedFormation = val;
//           });
//         },
//         value: selectedFormation,
//       ),
//     );
//   }
// }



