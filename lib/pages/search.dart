import 'package:flutter/material.dart';
import 'dart:convert';
import './kuraldetail.dart';

class Searchpage extends StatefulWidget {
  static String tag = 'contactlist-page';
  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  TextEditingController searchController = new TextEditingController();
  String filter;
  String before_filter;
  bool spinner = false;
  @override
  initState() {
    searchController.addListener(() {
      setState(() {
        before_filter = searchController.text;
      });
    });
  }

  void search_text(String text) {
    setState(() {
      filter = before_filter;
      spinner = true;
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        spinner = false;
      });
    });
  }

  void search_icon() {
    setState(() {
      filter = before_filter;
      spinner = true;
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        spinner = false;
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
    before_filter = '';
    filter = '';
    spinner = false;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          titleSpacing: 0.0,
          elevation: 0.0,

          title: new TextField(
            textAlign: TextAlign.left,
            //autofocus: true,
            onSubmitted: search_text,
            controller: searchController,
            style: new TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            decoration: new InputDecoration( contentPadding: EdgeInsets.fromLTRB(0,0,0,2),
              //prefixIcon: new Icon(Icons.search, color: Colors.black),
              enabledBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(5)),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              hintText: "தேடு...",
              hintStyle: new TextStyle(
                  color: Colors.black26, fontFamily: 'tamil', fontSize: 20),

              /*suffix: IconButton(
                        iconSize: 5,
                        icon: Icon(
                          Icons.search,
                          size: 0,
                        ),
                        onPressed: search_icon,
                      ),*/
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            /*Container(color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: new TextField(
                  onSubmitted: search_text,
                  controller: searchController,
                  decoration: InputDecoration(
                      fillColor: Colors.deepPurpleAccent,
                      hintText: 'தேடு',
                      contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      suffix: IconButton(
                        iconSize: 10,
                        icon: Icon(
                          Icons.search,
                          size: 20,
                        ),
                        onPressed: search_icon,
                      )),
                )),*/
            new Expanded(
                child: new Center(
              child: new FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/file.json'),
                  builder: (context, snapshot) {
                    // Decode the JSON
                    var new_data = json.decode(snapshot.data.toString());

                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                        return new Center(
                            child: new CircularProgressIndicator());
                      default:
                        if (snapshot.hasError)
                          return new Center(child: Text("Error loading...."));
                        else {
                          return spinner == true
                              ? new Center(
                                  child: new CircularProgressIndicator())
                              : new ListView.builder(
                                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                  // Build the ListView
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return filter == null || filter == ""
                                        ? new Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                    width: 1.0,
                                                    color: Color(0xFFFFecebeb)),
                                              ),
                                            ),
                                            child: RaisedButton(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 5, 0, 0),
                                              color: Colors.white,
                                              elevation: 0,
                                              //onPressed: () => _navigateToRoute(new_data[index]['line1'],new_data[index]['line2'],new_data[index]['mv']),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Detailscreen(
                                                            line1:
                                                                new_data[index]
                                                                    ['line1'],
                                                            line2:
                                                                new_data[index]
                                                                    ['line2'],
                                                            mv: new_data[index]
                                                                ['mv'],
                                                            sp: new_data[index]
                                                                ['sp'],
                                                            mk: new_data[index]
                                                                ['mk'],
                                                            num: new_data[index]
                                                                ['number'],
                                                            file: 1,
                                                            title:
                                                                'குறள் விளக்கம்',
                                                          )),
                                                );
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 15.0, 5, 15.0),
                                                child: new Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: <Widget>[
                                                    new Text(
                                                      new_data[index]['line1'],
                                                      style: new TextStyle(
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                    new Text(
                                                      new_data[index]['line2'],
                                                      style: new TextStyle(
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : (new_data[index]['line1']
                                                    .toLowerCase()
                                                    .contains(
                                                        filter.toLowerCase()) ||
                                                (new_data[index]['line2']
                                                    .toLowerCase()
                                                    .contains(
                                                        filter.toLowerCase())))
                                            ? Container(
                                                decoration: const BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Color(
                                                            0xFFFFecebeb)),
                                                  ),
                                                ),
                                                child: RaisedButton(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 5, 0, 0),
                                                  color: Colors.white,
                                                  elevation: 0,
                                                  //onPressed: () => _navigateToRoute(new_data[index]['line1'],new_data[index]['line2'],new_data[index]['mv']),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => Detailscreen(
                                                              line1: new_data[
                                                                      index]
                                                                  ['line1'],
                                                              line2: new_data[
                                                                      index]
                                                                  ['line2'],
                                                              mv: new_data[index]
                                                                  ['mv'],
                                                              sp: new_data[index]
                                                                  ['sp'],
                                                              mk: new_data[index]
                                                                  ['mk'],
                                                              num: new_data[
                                                                      index]
                                                                  ['number'],
                                                              file: 1,
                                                              title:
                                                                  'குறள் விளக்கம்')),
                                                    );
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        5, 15.0, 5, 15.0),
                                                    child: new Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: <Widget>[
                                                        new Text(
                                                          new_data[index]
                                                              ['line1'],
                                                          style: new TextStyle(
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                        new Text(
                                                          new_data[index]
                                                              ['line2'],
                                                          style: new TextStyle(
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : new Container();
                                  },
                                  itemCount:
                                      new_data == null ? 0 : new_data.length,
                                );
                        }
                    }
                  }),
            )),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
    print(post.fullName);
  }
}

class Contact {
  final String fullName;
  final String email;

  const Contact({this.fullName, this.email});
}
