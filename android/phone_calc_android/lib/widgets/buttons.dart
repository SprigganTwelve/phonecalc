import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ToLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buttonRightBox();
  }

  Widget _createButton(String text) {
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
  }

  Widget buttonRightBox() {
    return Column(
      children: [
        Row(
          children: [
            _createButton("e"),
            _createButton("µ"),
            _createButton("sin"),
          ],
        ),
        Row(
          children: [
            _createButton("Ac"),
            _createButton("⌫"),
            _createButton("/"),
          ],
        ),
        Row(
          children: [
            _createButton("7"),
            _createButton("8"),
            _createButton("9"),
          ],
        ),
        Row(
          children: [
            _createButton("4"),
            _createButton("5"),
            _createButton("6"),
          ],
        ),
        Row(
          children: [
            _createButton("1"),
            _createButton("2"),
            _createButton("3"),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 205, child: _createButton("0")),
            SizedBox(width: 100, child: _createButton(".")),
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

  Widget _createButton(String text) {
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
          backgroundColor: MaterialStateProperty.all(const Color(0xFFBAD7EC)),
        ),
        child: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }

  Widget buttonLeftBox() {
    return Column(
      children: [
        _createButton("deg"),
        _createButton("*"),
        SizedBox(height: 150, child: _createButton("+")),
        Expanded(flex: 1, child: _createButton("=")),
      ],
    );
  }
}
