import 'package:flutter/material.dart';
import 'dart:convert';
import './kuraldetail.dart';

class Kural extends StatefulWidget {
  int page;
  String title;
  String header;
  String detail;
  Kural(this.page, this.title,this.header,this.detail);
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<Kural> {
  List data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            widget.title,
            style: new TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        body: new Column(children: <Widget>[
          new Container(
            padding: EdgeInsets.all(8),
            child: new Text(
              widget.header,
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.red[400]),
            ),
          ),
          new Container(
            padding: EdgeInsets.all(10),
            child: new Text(
              widget.detail,
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black),
            ),
          ),
          new Expanded(
              child: new Center(
            child: new FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/f' + widget.page.toString() + '.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return new Center(child: new CircularProgressIndicator());
                    default:
                      if (snapshot.hasError)
                        return new Center(child: Text("Error loading...."));
                      else {
                        return new ListView.builder(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          // Build the ListView
                          itemBuilder: (BuildContext context, int index) {
                            return new Card(
                              child: Container(
                                child: RaisedButton(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                  color: Colors.red[400],
                                  //onPressed: () => _navigateToRoute(new_data[index]['line1'],new_data[index]['line2'],new_data[index]['mv']),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detailscreen(
                                              line1: new_data[index]['line1'],
                                              line2: new_data[index]['line2'],
                                              mv: new_data[index]['mv'],
                                              num: new_data[index]['number'],
                                              file:widget.page
                                              )),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        new Text(
                                          new_data[index]['line1'],
                                          style: new TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white),
                                        ),
                                        new Text(
                                          new_data[index]['line2'],
                                          style: new TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: new_data == null ? 0 : new_data.length,
                        );
                      }
                  }
                }),
          ))
        ]));
  }
}
