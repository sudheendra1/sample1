
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sample/blank.dart';
import 'package:sample/function.dart';

class Sample extends StatefulWidget{
  const Sample({super.key});

  @override
  State<StatefulWidget> createState() {
    return _blankstate();
  }

}

class _blankstate extends State<Sample>{
  final text = TextEditingController();
  String url='';
  var data;
  String output='initial';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 350,child: TextField(onChanged: (value){
            url='http://punio.serveo.net/api?query='+value.toString();
          },decoration: InputDecoration(label: Text('Query')),)),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()async{data= await fetchdata(url);
          var decoded;
if (data!=null&&data.isNotEmpty){
  decoded = jsonDecode(data);
}else {
  decoded='fuck u';
}

            setState(() {
              output=decoded['output'];
              print(output);
            });
            }, child: Text('Submit')),SizedBox(height: 20,),
          Text(output),


          ElevatedButton(onPressed: (){Navigator.push(context , MaterialPageRoute(builder: (context)=>Blank()));}, child: Text('Blank screen'))
        ],
      ),
    ),);
  }

}