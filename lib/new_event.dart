import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';

class NewEventscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventscreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      appBar: AppBar(
        title: Text("Add a new event"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Container(
                  width: 300,
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.purple[200],
                        prefixIcon: Icon(Icons.calendar_month),
                        labelText: 'Enter a search term',
                        border: InputBorder.none,
                        labelStyle: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ),
            Builder(builder: (context) {
              return Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: OutlinedButton(
                  onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  },
                  child: Text("ADD"),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(330, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    side: BorderSide(width: 2, color: Colors.lightGreen),
                    backgroundColor: Colors.white,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
