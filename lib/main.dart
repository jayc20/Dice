import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dice Roller")
        ),
        backgroundColor: Colors.red[900],
      ),
      body: dicesRoll(),
      backgroundColor: Colors.red[900],
    ),
  ));
}

class dicesRoll extends StatefulWidget {
  const dicesRoll({Key? key}) : super(key: key);

  @override
  State<dicesRoll> createState() => _dicesRollState();
}

class _dicesRollState extends State<dicesRoll> {
  var leftButton = Random().nextInt(6) + 1;
  var rightButton = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900]
              ),
              onPressed: (){
                setState(() {
                  leftButton = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$leftButton.png"),
            )
          )),Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900]
              ),
              onPressed: (){
                setState(() {
                  rightButton = Random().nextInt(6)+1;
                });
                //rightButton = Random().nextInt(6)+1;
              },
              child: Image.asset("images/dice$rightButton.png"),
            ),
          )
          )
        ],
      ),
    );
  }
}
