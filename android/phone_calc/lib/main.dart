import 'package:flutter/material.dart';
import 'package:phone_calc/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String previewCal = '';
  String followCalc = '';
  String lastPreviewValue = '';
  // ignore: non_constant_identifier_names
  HandleCalcul(value) {
    if (value == "⌫") {
    } else if (value == "Ac") {
    } else if (value) {
    } else {
      lastPreviewValue = lastPreviewValue + value;
      previewCal = lastPreviewValue;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    previewCal = '0';
    followCalc = '= 0 ';
    lastPreviewValue = '';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFFB6D8F1),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xFFEFF5FB),
                  Color.fromRGBO(121, 190, 237, 1.0),
                  Color.fromRGBO(67, 136, 185, 1.0)
                ],
                    stops: [
                  0,
                  0.5,
                  1.0
                ])),
            child: Column(
              children: [
                /* display of Calcul */
                Container(
                    height: 320,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          previewCal,
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          followCalc,
                          style: const TextStyle(
                              fontSize: 50, color: Colors.white),
                        )
                      ],
                    )),

                /*--------------------*/
                /*---------Button-----------*/
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ToLeft(
                            //pass previewValue
                            insertButtonValue: (value) => {
                              setState(() {
                                HandleCalcul(value);
                              })
                            },
                          ),
                          //pass previewValue
                          ToRight(
                            insertButtonValue: (value) => {
                              setState(() {
                                HandleCalcul(value);
                              })
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

/*---------General structure-----------*/