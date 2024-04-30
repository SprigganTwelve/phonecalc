import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:phone_calc_android/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFFB6D8F1),
          body: Column(
            children: [
              /* display of Calcul */
              Container(
                  height: 400,
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "536 + 3536",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Text(
                        "= ....",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      )
                    ],
                  )),

              /*--------------------*/
              /*---------Button-----------*/
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  color: const Color.fromARGB(255, 40, 40, 38),
                  child: Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ToLeft(), ToRight()],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

/*---------General structure-----------*/
