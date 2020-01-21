import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DicePageState();
  }
}

class DicePageState extends State<DicePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  void _throwDices() {
    _leftDiceNumber = 1 + Random().nextInt(6);
    _rightDiceNumber = 1 + Random().nextInt(6);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_leftDiceNumber.png'),
              onPressed: () {
                setState(_throwDices);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_rightDiceNumber.png'),
              onPressed: () {
                setState(_throwDices);
              },
            ),
          ),
        ],
      ),
    );
  }
}
