import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic'),
          backgroundColor: Colors.blue,
        ),
        body: Magic(),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int left = 1;
  //int right = 1;
  void changeface() {
    setState(() {
      left = Random().nextInt(5) + 1;
      //right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            //flex:2,
            child: TextButton(
                onPressed: () {
                  changeface();
                },
                child: Image.asset('images/ball$left.png')),
          ),
        ],
      ),
    );
  }
}
