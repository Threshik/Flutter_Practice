import 'package:flutter/material.dart';

void main(){
runApp(secondApp());
}

// class MainApp extends StatelessWidget{

//   String displayName = "Hello ";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Change Hello to bye"),
//           centerTitle: false,
//         ),
//         body: Column(
//           children: [
//             Text(displayName),
//             MaterialButton(
//               child: Text("Click"),
//               color: Colors.lightBlue,
//               padding: EdgeInsets.all(10),
              
//              onPressed: () {
//               displayName="Bye";
//              } ,
//             )
//           ],
//         )
//       ),
//     );
//   }
// }

class secondApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return secondAppState();
  }
}

class secondAppState extends State<secondApp>{
   String displayName = "Hello ";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Change Hello to bye"),
          centerTitle: false,
        ),
        body: Column(
          children: [
            Text(displayName),
            MaterialButton(
              child: Text("Click"),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(10),
              
             onPressed: () {
              setState(() {
                displayName="Bye";
              });
              
             } ,
            )
          ],
        )
      ),
    );
  }
}