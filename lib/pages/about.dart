import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './search.dart';
import 'package:rect_getter/rect_getter.dart';
import './home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:admob_flutter/admob_flutter.dart';

class Aboutus extends StatelessWidget {
  Color active_color=Color(0xFFEC1C24);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "தன்குறிப்பு",
            textAlign: TextAlign.center,
            style: new TextStyle(
                color: Colors.black, fontSize: 30, fontFamily: 'tamil'),
          ),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: SingleChildScrollView(
                        child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      constraints: new BoxConstraints.expand(
                          width: MediaQuery.of(context).size.width-50, height: 80),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/img/logo.png'),
                          alignment: Alignment.center,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Container(padding: EdgeInsets.fromLTRB( MediaQuery.of(context).size.width/18, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Icon(
                              Icons.location_on,
                              size: 48,
                              color: Colors.black,
                            )),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "126,Radhakrishnan St,",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Belliyappa Nagar ,",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Walajapet - 632513 ,",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "Vellore , Tamilnadu ,",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "India",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ])
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Icon(
                              Icons.phone,
                              size: 48,
                              color: Colors.black,
                            )),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  InkWell(
                                      onTap: () async {
                                        const url = "tell://+918883955549";
                                        UrlLauncher.launch(
                                            'tel:+${url.toString()}');
                                      },
                                      child: Text(
                                        "+91 8883955549,",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ])
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Center(
                                child: Icon(
                              Icons.mail,
                              size: 44,
                              color: Colors.black,
                            )),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  InkWell(
                                      onTap: () async {
                                        const url = "info@pictuscode.com";
                                        UrlLauncher.launch(
                                            'mailto:${url.toString()}');
                                      },
                                      child: Text(
                                        "info@pictuscode.com",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ])
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                        
                          children: <Widget>[
                            Center(
                                child: Icon(
                              Icons.link,
                              size: 44,
                              color: Colors.black,
                            )),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                      width: 250,
                                      child: InkWell(
                                          onTap: () async {
                                            String _url =
                                                "https://www.pictuscode.com/";
                                            if (await canLaunch(_url)) {
                                              await launch(_url);
                                            } else {
                                              throw 'Could not launch $_url';
                                            }
                                          },
                                          child: Text(
                                            "https://www.pictuscode.com/",
                                            overflow: TextOverflow.clip,
                                            maxLines: 1,
                                            softWrap: false,
                                            style: TextStyle(fontSize: 16),
                                          ))),
                                ])
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        AdmobBanner(
                          adUnitId: 'ca-app-pub-4527484817137575~4555676851',
                          adSize: AdmobBannerSize.BANNER,
                        )
                      ],
                    ),
                  ),
                ])))
              ],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: RectGetter(
            //<-- Wrap Fab with RectGetter
            child: Hero(
                tag: "searchbar_hero",
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));},
                  tooltip: 'தேடு',
                  child: Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.black,
                  ),
                  elevation: 2.0,
                ))),
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6.0,
            child: new SizedBox(
                height: 60.0,
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                            onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Homepage()))
                                },
                            child: Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(11, 5, 1, 2)),
                                      /*Icon(
                                        Icons.home,
                                        size: 26,
                                      ),*/
                                      new SvgPicture.asset(
                                        'assets/img/home.svg',
                                        height: 20.0,
                                        width: 20.0,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      Text(
                                        "முகப்பு",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            //fontWeight: FontWeight.bold,
                                            fontFamily: 'Tamil'),
                                      ),
                                    ])))),
                    Expanded(
                      child: SizedBox(
                        height: 60.0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width / 15,
                                  5,
                                  0,
                                  0),
                              child: Text(
                                "தேடு",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: 'Tamil'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                            onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Aboutus()))
                                },
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 5, 10, 2)),
                                      /* Icon(
                                        Icons.settings,
                                        size: 26,
                                      ),*/
                                      new SvgPicture.asset(
                                        'assets/img/info.svg',
                                        height: 20.0,
                                        width: 20.0,
                                        allowDrawingOutsideViewBox: true,
                                        color: active_color,
                                      ),
                                      Text(
                                        "தன்குறிப்பு",
                                        style: TextStyle(
                                            color: active_color,
                                            fontSize: 22,
                                            //fontWeight: FontWeight.bold,
                                            fontFamily: 'Tamil'),
                                      ),
                                    ])))),
                  ],
                ))));
  }

  void _onTapsearch() {
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Searchpage()));
  }
}
