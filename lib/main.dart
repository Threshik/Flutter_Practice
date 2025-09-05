import 'package:flutter/material.dart';

void main(){
runApp(secondApp());
}


class secondApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return secondAppState();
  }
}

class secondAppState extends State<secondApp>{
   List<String> fruits = ["Apple","Mango","Kiwi"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Change Hello to bye"),
          centerTitle: false,
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context,index){
            return Text(fruits[index]);
          }
        )
      ),
    );
  }
}