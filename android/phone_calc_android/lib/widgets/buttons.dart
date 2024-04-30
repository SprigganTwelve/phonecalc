import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  CreateButton(
      {required this.text,
      required this.textColor,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: TextButton(
        onPressed: () => {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          fixedSize: MaterialStateProperty.all(const Size(90, 90)),
          alignment: Alignment.center,
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        child: Text(text, style: TextStyle(color: textColor, fontSize: 30)),
      ),
    );
    ;
  }
}

class ToLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buttonRightBox();
  }

  Widget buttonRightBox() {
    return Column(
      children: [
        Row(
          children: [
            CreateButton(
              text: "e",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "µ",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "sin",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "Ac",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "⌫",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "/",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "7",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "8",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "9",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "4",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "5",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "6",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "1",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "2",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
            CreateButton(
              text: "3",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: 205,
                child: CreateButton(
                  text: "0",
                  backgroundColor: const Color(0xFFB1CDE1),
                  textColor: Colors.white,
                )),
            SizedBox(
                width: 100,
                child: CreateButton(
                  text: ".",
                  backgroundColor: const Color(0xFFB1CDE1),
                  textColor: Colors.white,
                )),
          ],
        ),
      ],
    );
  }
}

class ToRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buttonLeftBox();
  }

  Widget buttonLeftBox() {
    return Column(
      children: [
        CreateButton(
          text: "deg",
          backgroundColor: const Color(0xFFB1CDE1),
          textColor: Colors.white,
        ),
        CreateButton(
          text: "*",
          backgroundColor: const Color(0xFFB1CDE1),
          textColor: Colors.white,
        ),
        SizedBox(
            height: 150,
            child: CreateButton(
              text: "+",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            )),
        Expanded(
            flex: 1,
            child: CreateButton(
              text: "=",
              backgroundColor: const Color(0xFFB1CDE1),
              textColor: Colors.white,
            )),
      ],
    );
  }
}
