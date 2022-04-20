import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Diece App'),
        backgroundColor: Colors.red,
      ),
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
class _FavoriteWidgetState extends State<MyApp> {
  int leftdice = 1;
  int rightDice = 3;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftdice=Random().nextInt(6)+1;
                      rightDice=Random().nextInt(6)+1;
                    });
                    print('let button is clicked');
                  },
                  child: Image.asset('images/dice$leftdice.png')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDice=Random().nextInt(6)+1;
                      leftdice=Random().nextInt(6)+1;
                    });
                    print('Right button is clicked');
                  },
                  child: Image.asset('images/dice$rightDice.png')),
            )
          ],
        ),
      ),
    );

  }
}
