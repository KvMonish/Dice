import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LDN = 1;
  var RDN = 1;
  void changedice(){
    setState(() {
      LDN = Random().nextInt(6) + 1;
      RDN = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset('images/dice$LDN.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset('images/dice$RDN.png'),
            ),
          ),
        ],
      ),
    );

  }
}

