import 'package:flutter/material.dart';
import 'package:fluttercourse2023/new_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [Text("")];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[400],
        appBar: AppBar(
          title: Text("Event Scheduler"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => _list[index]),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventscreen()));
              setState(() {
                _list.add(Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      newText,
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 18,
                        color: Colors.black,
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ));
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
