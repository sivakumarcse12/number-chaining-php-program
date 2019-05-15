import 'package:flutter/material.dart';
import 'dart:convert';
import './kuraldetail.dart';
import 'package:flutter/services.dart' show rootBundle;

class NewPage extends StatefulWidget {
  final String img;
  final String title;
  final int head;
  NewPage({this.img, this.title, this.head});
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> with SingleTickerProviderStateMixin {
  List<dynamic> new_data;
  List<dynamic> overalldata;
 
  @override
 
 @override
  void initState() {
       super.initState();
       get_load();

  }
  
  Future<String>  get_load() async{
        var listval = await rootBundle.loadString('assets/file.json');
        overalldata = json.decode(listval);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
          Container(
            constraints: new BoxConstraints.expand(
              height: 250.0,
            ),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/img/' + widget.img),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: <Widget>[
              
                  Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  color: Colors.black54,
                                  child: Text(
                                    widget.title,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decorationColor: Colors.red,
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'tamil'),
                                  )))
                 
            ]),
          ),
          Expanded(
              child: new Center(
                  child: new FutureBuilder(
                      future: DefaultAssetBundle.of(context).loadString(
                          'assets/h' + widget.head.toString() + '.json'),
                      builder: (context, snapshot) {
                        // Decode the JSON
                        new_data = json.decode(snapshot.data.toString());
                       
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                            return new Center(
                                child: new CircularProgressIndicator());
                          default:
                            if (snapshot.hasError)
                              return new Center(
                                  child: Text("Error loading...."));
                            else {
                              return new ListView.builder(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                // Build the ListView
                                itemBuilder: (BuildContext context, int index) {
                                  return mylist(index);
                                },
                                itemCount:
                                    new_data == null ? 0 : new_data.length,
                              );
                            }
                        }
                      }))),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: Hero(tag:'h1', child:Container(
          padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: FloatingActionButton(
            backgroundColor: Colors.black26,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.close,
            ),
          )),
        ));
  }

  Widget mylist(int index) => (index % 2 == 0)
      ? new_data.length > index + 1 ? myRow(index) : Text('')
      : SizedBox(
          height: 0.0,
        );

  Container myRow(int i) => Container(
      padding: EdgeInsets.fromLTRB(6, 0, 6, 2),
      child: Row(
        children: <Widget>[
          halfrow(i),
          halfrow(i + 1),
        ],
      ));

  Widget halfrow(int index) {
    return Expanded(
        flex: 1,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.50,
            child: InkWell(
              
                onTap: () {
                  
                 
                  var index_kural=new_data[index]['Index'];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detailscreen(
                            line1: overalldata[index_kural]['line1'],
                            line2: overalldata[index_kural]['line2'],
                            mv: overalldata[index_kural]['mv'],
                            sp: overalldata[index_kural]['sp'],
                            mk: overalldata[index_kural]['mk'],
                            num: overalldata[index_kural]['number'],
                            file: widget.head,
                            title:new_data[index]['Tamil'])),
                  );
                },
                child: Card(
                  color: Color.fromRGBO(58, 66, 86, 1.0),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    ),
                   Text(
                      new_data[index]['Tamil'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    /*Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
            )*/
                  ]),
                ))));
  }
}
