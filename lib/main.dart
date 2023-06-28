import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const diceApp());
}
class diceApp extends StatelessWidget {
  const diceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: uilol()
    );
  }
}
class uilol extends StatefulWidget {
  uilol({Key? key}) : super(key: key);

  @override
  State<uilol> createState() => _uilolState();
}

class _uilolState extends State<uilol> {
  int num = 0;

  int getRandomNumber(){
     num = Random().nextInt(5);
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text("Dice App")),
      ),
      body: Center(
    child: GestureDetector(
      onTap: (){
        setState(() {
          getRandomNumber();
          print(num+1);
        });

      },
        child: Image.asset("images/dice${num+1}.png",
          height: 250,
          width: 250,
        )),
    ),

    );
  }
}


