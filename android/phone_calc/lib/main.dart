import 'package:expressions/expressions.dart';
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

  /*-------dealing with calculs---------*/
  void HandleCalcul(value) {
    if (value == "⌫") {
      int endPoint = lastPreviewValue.length - 1;
      lastPreviewValue = lastPreviewValue.substring(0, endPoint);
      previewCal = lastPreviewValue;
    } else if (value == "Ac") {
      lastPreviewValue = '0';
      previewCal = lastPreviewValue;
      followCalc = "= 0 ";
    } else if (value == "=") {
      Expression exp = Expression.parse(previewCal);
      const evalutor = ExpressionEvaluator();
      var result = evalutor.eval(exp, {});
      followCalc = "= $result";
    } else {
      lastPreviewValue = lastPreviewValue + value;
      previewCal = lastPreviewValue;
    }
  }
  /*----------------*/

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
                )
              ],
            ),
          )),
    );
  }
}

/*---------General structure-----------*/
