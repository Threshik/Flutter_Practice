import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  double size = 0;
  String inputValue = "";
  String calculatedValue="";
  String operator ="";

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size.width / 5;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                inputValue,
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
            ),

            Column(
              children: [
                Row(
                  children: [
                    calcButton("7", Colors.white54),
                    calcButton("8", Colors.white54),
                    calcButton("9", Colors.white54),
                    calcButton("/", Colors.orange),
                  ],
                ),
                Row(
                  children: [
                    calcButton("4", Colors.white54),
                    calcButton("5", Colors.white54),
                    calcButton("6", Colors.white54),
                    calcButton("*", Colors.orange),
                  ],
                ),
                Row(
                  children: [
                    calcButton("1", Colors.white54),
                    calcButton("2", Colors.white54),
                    calcButton("3", Colors.white54),
                    calcButton("-", Colors.orange),
                  ],
                ),
                Row(
                  children: [
                    calcButton("0", Colors.white54),
                    calcButton(".", Colors.white54),
                    calcButton("=", Colors.orange),
                    calcButton("+", Colors.orange),
                  ],
                ),
              ],
            ),
            calcButton("Clear", Colors.black),
          ],
        ),
      ),
    );
  }

  Widget calcButton(String text, Color bgcolor) {
    return InkWell(
      onTap: () {
        if (text == "Clear") {
          setState(() {
            inputValue = "";
            calculatedValue="";
            operator="";
          });
        } 
        else if(text == "+" || text == "-" || text == "*" || text == "/"){
          setState(() {
            //first time operator is entered
            if(calculatedValue.isEmpty){
              calculatedValue=inputValue;
            }
            else{
              double calc = double.parse(calculatedValue);
              double inp = double.parse(inputValue);

              if(operator=="+"){
                calc+=inp;
              }
              else if(operator=="-"){
                calc-=inp;
              }
              else if(operator=="*"){
                calc*=inp;
              }
              else if(operator=="/"){
                calc/=inp;
              }
              calculatedValue = calc.toString();
              inputValue=""; //clr for nxt num
              operator=text; // store new operator
            }
          });
        }
        else if(text=="="){
          setState(() {
           if (calculatedValue.isNotEmpty && inputValue.isNotEmpty) {
              double calc = double.parse(calculatedValue);
              double inp = double.parse(inputValue);

              if (operator == "+") calc += inp;
              else if (operator == "-") calc -= inp;
              else if (operator == "*") calc *= inp;
              else if (operator == "/") calc /= inp;

              inputValue = calc.toString();
              calculatedValue = ""; // reset after equal
              operator = "";
           }
          });
        }
        else {
          setState(() {
            inputValue = inputValue + text;
          });
        }
      },
      child: Container(
        height: size,
        width: size,
        margin: EdgeInsets.all(10),

        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: bgcolor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
