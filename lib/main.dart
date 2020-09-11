import 'package:flutter/material.dart';
import 'package:freelancer5/pages/screen1.dart';
import 'package:freelancer5/pages/screen2.dart';
import 'package:freelancer5/pages/screen3.dart';
import 'package:freelancer5/pages/screen4.dart';
import 'package:freelancer5/pages/screen5.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen1(),
          )),
          child: Text("Screen1"),
        ),
        RaisedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen2(),
          )),
          child: Text("Screen2"),
        ),
        RaisedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen3(),
          )),
          child: Text("Screen3"),
        ),
        RaisedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen4(),
          )),
          child: Text("Screen4"),
        ),
        RaisedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen5(),
          )),
          child: Text("Screen5"),
        ),
      ],
    ));
  }
}
