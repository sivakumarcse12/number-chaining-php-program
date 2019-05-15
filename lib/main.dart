import 'package:flutter/material.dart';
import './pages/home.dart';
import 'package:admob_flutter/admob_flutter.dart';
void main() {
  Admob.initialize('ca-app-pub-4527484817137575~4555676851');
  runApp(Thirukkural());
}

String line1 = 'test';

class Thirukkural extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.black,
        accentColor: Colors.black,
       
      ),
      /* home:Scaffold(
        appBar: AppBar(title: new Text("திருக்குறள் - Thirukkural")),
        body:Column(
          children: <Widget>[
            new Text("Thirukkural",
            style: TextStyle(),),
            new Text("Thirukkural"),
          ],
        )
      ),*/
      home: new Homepage(),
      
    );
  }
}


