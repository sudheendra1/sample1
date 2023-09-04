
import 'package:flutter/material.dart';
import 'package:sample/blank.dart';

class Sample extends StatefulWidget{
  const Sample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _blankstate();
  }

}

class _blankstate extends State<Sample>{
  final text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 350,child: TextField(controller: text,decoration: InputDecoration(label: Text('Query')),)),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){print(text.text);}, child: Text('Submit')),
          ElevatedButton(onPressed: (){Navigator.push(context , MaterialPageRoute(builder: (context)=>Blank()));}, child: Text('Blank screen'))
        ],
      ),
    ),);
  }

}