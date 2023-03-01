import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Tossup());
}

class Tossup extends StatefulWidget {
  const Tossup({Key? key}) : super(key: key);

  @override
  State<Tossup> createState() => _TossupState();
}

class _TossupState extends State<Tossup> {
  int rightdice=1;
  int leftdice=4;
void mydace(){
  setState(() {
    rightdice=Random().nextInt(6)+1;leftdice=Random().nextInt(6)+1;
  });

}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Tossup",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),)),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
              SizedBox(height: 30,),
            ],),
          Container(
            height: 100,
              width: 300,
              child: InkWell(onTap: (){
                mydace();



              },
                  child: Image(image: AssetImage("Dice/dice$rightdice.png")))),
               Container(
                 height: 100,
                   width: 300,
                   child: InkWell(onTap: (){
                     mydace();

                   },
                       child: Image(image:AssetImage("Dice/dice$leftdice.png")))),

        ],),
      ),
    );
  }
}
