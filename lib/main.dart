import 'package:flutter/material.dart';

void main(){
 runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Restaurant Menu"),
      backgroundColor: Colors.amber,
      centerTitle: false,
    ),
    body: ListView(
      children: [
        Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Chicken Rice",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Chicken rice with multiple falours"),
          Text("167.9", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("White Sauce Pasta",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Pasta with multiple falours"),
          Text("249.0", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Chicken Briyani",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Chicken Briyani with multiple falours"),
          Text("250.0", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kothu Parotta",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Kothu Parotta with multiple falours"),
          Text("80.9", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kothu Parotta",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Kothu Parotta with multiple falours"),
          Text("80.9", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kothu Parotta",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Kothu Parotta with multiple falours"),
          Text("80.9", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    Container(
      width: double.infinity,
      height: 85,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: Colors.black26
          )
        ]
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kothu Parotta",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          ),),
          Text("Kothu Parotta with multiple falours"),
          Text("80.9", style:TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),)

        ],

      ),
    ),
    
      ],
    )
  ),
 ));
}