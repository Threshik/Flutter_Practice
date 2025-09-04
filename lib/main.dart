import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Menu"),
        backgroundColor: Colors.amber,
        centerTitle: false,

      ),
      body: Center(
        child: Container(
          //color: Colors.blue,
          height: 200,
          width: 200,
          //alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),

          //child: Text("Hello"),

          // child: Container(
          //   width: 100,
          //   height: 100,
          //   alignment: Alignment.center,
          //   padding: EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: Colors.amber
          //   ),
          //   child: Text("Hello"),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber
            ),
            child: Text("Hello"),
          ),
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber
            ),
            child: Text("Hello"),
          ),
            ],
          ),
        ),
      ),
    ),
  ));
}