import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  String displayData = "No data found";
  TextEditingController textEditingController = TextEditingController();
  List<String> taskList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Todo List App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 44, 138, 247),
        ),
        body: Column(
          children: [
            Row(
              children: [
                //expaned for row
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        label: Text("Enter a Task"),
                        hintStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.lightBlueAccent,
                  padding: EdgeInsets.all(10),
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5),
                  ),
                  onPressed: () {
                    setState(() {
                      taskList.add(textEditingController.text);
                      textEditingController.clear();
                    });
                  },
                  child: Text("Add", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),

            //flexible for column
            Flexible(
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                   return Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(taskList[index]),
                        ),
                      ),
                      MaterialButton(
                        child: Icon(Icons.delete, color: Colors.red),
              
                        onPressed: () {
                          setState(() {
                            taskList.removeAt(index);
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
