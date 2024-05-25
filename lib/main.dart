import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(child: Text('Dice App')),
          backgroundColor: Colors.blueAccent,
        ),

        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int et=1;
  int et2=1;
  void changeDiceNo(){
    et=Random().nextInt(6)+1;
    et2=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceNo();
                });
                // print("Left one Printed $et");
              },
              child: Image.asset('images/dice$et.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceNo();
                });
                // print("Right one Printed");
              },
              child: Image.asset('images/dice$et2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
