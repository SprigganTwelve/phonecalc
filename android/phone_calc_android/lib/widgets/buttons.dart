import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateButton extends StatelessWidget {
  final String text;
  CreateButton({required this.text});

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
          backgroundColor: MaterialStateProperty.all(const Color(0xFFB1CDE1)),
        ),
        child: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 30)),
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
            CreateButton(text: "e"),
            CreateButton(text: "µ"),
            CreateButton(text: "sin"),
          ],
        ),
        Row(
          children: [
            CreateButton(text: "Ac"),
            CreateButton(text: "⌫"),
            CreateButton(text: "/"),
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
        CreateButton(text: "*"),
        SizedBox(height: 150, child: CreateButton(text: "+")),
        Expanded(flex: 1, child: CreateButton(text: "=")),
      ],
    );
  }
}