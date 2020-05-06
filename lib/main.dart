import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 1;
  var random = new Random();
  
  
  void _numberRandom() {
    setState(() {
      number = random.nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset("images/ball$number.png"),
                onPressed: () => _numberRandom(),
              ),
            )
          ],
        ),
      ),
    );
  }


}
