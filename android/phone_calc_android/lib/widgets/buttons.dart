import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Size size;
  final double borderRadius;
  final Color backgroundColor;
  final Function handlePress;
  CreateButton(
      {required this.text,
      this.size = const Size(90, 90),
      this.borderRadius = 15,
      this.handlePress = getValue,
      this.textColor = const Color.fromARGB(255, 245, 247, 250),
      this.backgroundColor = const Color.fromRGBO(201, 231, 253, 1.0)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: TextButton(
        onPressed: handlePress(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
          fixedSize: MaterialStateProperty.all(size),
          alignment: Alignment.center,
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        clipBehavior: Clip.none,
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
            ),
            CreateButton(text: "µ"),
            CreateButton(text: "sin"),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "Ac",
            ),
            CreateButton(text: "⌫"),
            CreateButton(
                text: "/",
                backgroundColor: const Color.fromARGB(255, 119, 189, 247)),
          ],
        ),
        Row(
          children: [
            CreateButton(text: "7"),
            CreateButton(text: "8"),
            CreateButton(text: "9"),
          ],
        ),
        Row(
          children: [
            CreateButton(text: "4"),
            CreateButton(text: "5"),
            CreateButton(text: "6"),
          ],
        ),
        Row(
          children: [
            CreateButton(text: "1"),
            CreateButton(text: "2"),
            CreateButton(text: "3"),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 205, child: CreateButton(text: "0")),
            SizedBox(width: 100, child: CreateButton(text: ".")),
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
        CreateButton(text: "deg"),
        CreateButton(
          text: "*",
          backgroundColor: const Color.fromARGB(255, 119, 189, 247),
        ),
        SizedBox(
          height: 150,
          child: CreateButton(
            text: "+",
            backgroundColor: const Color.fromARGB(255, 119, 189, 247),
          ),
        ),
        Expanded(
          flex: 1,
          child: CreateButton(
            text: "=",
            backgroundColor: const Color.fromARGB(255, 28, 135, 222),
          ),
        ),
      ],
    );
  }
}

/*------------function--------*/

void getValue() {}
