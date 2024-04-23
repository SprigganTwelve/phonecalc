import 'package:flutter/material.dart';

void main() {
  runApp(const Composeur());
}

class Composeur extends StatelessWidget {
  const Composeur({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.black.withOpacity(0.6),
              height: 250,
              child: const Text('00'),
            ),
            const Row(
              children: [
                _RightBord(),
                _leftBord(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _RightBord extends StatelessWidget {
  const _RightBord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            ElevatedButton(onPressed: enterNumber, child: Text('e')),
            ElevatedButton(onPressed: enterNumber, child: Text('u')),
            ElevatedButton(onPressed: enterNumber, child: Text('sin'))
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: enterNumber, child: Text('Ac')),
            ElevatedButton(onPressed: enterNumber, child: Text('⌫')),
            ElevatedButton(onPressed: enterNumber, child: Text('/'))
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: enterNumber, child: Text('7')),
            ElevatedButton(onPressed: enterNumber, child: Text('8')),
            ElevatedButton(onPressed: enterNumber, child: Text('9'))
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: enterNumber, child: Text('4')),
            ElevatedButton(onPressed: enterNumber, child: Text('5')),
            ElevatedButton(onPressed: enterNumber, child: Text('6'))
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: enterNumber, child: Text('1')),
            ElevatedButton(onPressed: enterNumber, child: Text('2')),
            ElevatedButton(onPressed: enterNumber, child: Text('3'))
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(onPressed: enterNumber, child: Text('0')),
            ),
            ElevatedButton(onPressed: enterNumber, child: Text('.')),
          ],
        ),
      ],
    );
  }
}

class _leftBord extends StatelessWidget {
  const _leftBord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ElevatedButton(onPressed: enterNumber, child: Text('deg')),
        ElevatedButton(onPressed: enterNumber, child: Text('*')),
        Expanded(
          child: ElevatedButton(onPressed: enterNumber, child: Text('+')),
        ),
        Expanded(
          child: ElevatedButton(onPressed: enterNumber, child: Text('=')),
        )
      ],
    );
  }
}

void enterNumber() {}
