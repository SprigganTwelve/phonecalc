/*----------- Button format ----------*/

import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Size size;
  final double borderRadius;
  final Color backgroundColor;
  final ValueChanged<String> setButtonValue;

  // Stock last text value

  CreateButton(
      {required this.text,
      required this.setButtonValue,
      this.size = const Size(90, 90),
      this.borderRadius = 15,
      this.textColor = const Color.fromARGB(255, 245, 247, 250),
      this.backgroundColor = const Color.fromRGBO(201, 231, 253, 1.0)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: TextButton(
        /*------Handle---Button--------*/

        onPressed: () => {
          {setButtonValue(text)}
        },

        /*---------style- of--button--------*/
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
        /*-----------------*/

        child: Text(text, style: TextStyle(color: textColor, fontSize: 30)),
      ),
    );
  }
}

/*-----------to LEFT Button ----------*/

class ToLeft extends StatefulWidget {
  //get callback from parent

  final ValueChanged<String> insertButtonValue;
  ToLeft({required this.insertButtonValue});
  @override
  State<ToLeft> createState() => _ToLeftState();
}

class _ToLeftState extends State<ToLeft> {
  @override
  Widget build(BuildContext context) {
    return buttonRightBox();
  }

/*--------colums of row-------------*/

  Widget buttonRightBox() {
    return Column(
      children: [
        Row(
          children: [
            CreateButton(
              text: "e",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "µ",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "sin",
              setButtonValue: widget.insertButtonValue,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "Ac",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "⌫",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
                text: "/",
                setButtonValue: widget.insertButtonValue,
                backgroundColor: const Color.fromARGB(255, 119, 189, 247)),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "7",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "8",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "9",
              setButtonValue: widget.insertButtonValue,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "4",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "5",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "6",
              setButtonValue: widget.insertButtonValue,
            ),
          ],
        ),
        Row(
          children: [
            CreateButton(
              text: "1",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "2",
              setButtonValue: widget.insertButtonValue,
            ),
            CreateButton(
              text: "3",
              setButtonValue: widget.insertButtonValue,
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: 205,
                child: CreateButton(
                  text: "0",
                  setButtonValue: widget.insertButtonValue,
                )),
            SizedBox(
                width: 100,
                child: CreateButton(
                  text: ".",
                  setButtonValue: widget.insertButtonValue,
                )),
          ],
        ),
      ],
    );
  }
}

/*---------------------*/

/*-----------to Right ----------*/

class ToRight extends StatefulWidget {
  //get callback from parent
  final ValueChanged<String> insertButtonValue;
  ToRight({required this.insertButtonValue});
  @override
  State<ToRight> createState() => _ToRightState();
}

class _ToRightState extends State<ToRight> {
  @override
  Widget build(BuildContext context) {
    return buttonLeftBox();
  }

/*--------colums of button-------------*/

  Widget buttonLeftBox() {
    return Column(
      children: [
        CreateButton(
          text: "deg",
          setButtonValue: widget.insertButtonValue,
        ),
        CreateButton(
            text: "*",
            backgroundColor: const Color.fromARGB(255, 119, 189, 247),
            setButtonValue: widget.insertButtonValue),
        SizedBox(
          height: 150,
          child: CreateButton(
              text: "+",
              backgroundColor: const Color.fromARGB(255, 119, 189, 247),
              setButtonValue: widget.insertButtonValue),
        ),
        Expanded(
          flex: 1,
          child: CreateButton(
              text: "=",
              backgroundColor: const Color.fromARGB(255, 28, 135, 222),
              setButtonValue: widget.insertButtonValue),
        ),
      ],
    );
  }
}
/*---------------------*/

/*------------function--------*/
