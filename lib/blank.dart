import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Blank extends StatefulWidget{
  const Blank({super.key});

  @override
  State<StatefulWidget> createState() {
    return _blankstate();
  }

}

class _blankstate extends State<Blank>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Blank screen'),);
  }

}