import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './Homesubpage.dart';
import 'package:rect_getter/rect_getter.dart';
import './search.dart';
import './about.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:admob_flutter/admob_flutter.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Duration animationDuration = Duration(milliseconds: 100);
  final Duration delay = Duration(milliseconds: 200);
  GlobalKey rectGetterKey = RectGetter.createGlobalKey();
  Rect rect;
  Color active_color=Color(0xFFEC1C24);
  
  void _onTap() async {
    /*setState(() => rect = RectGetter.getRectFromKey(
        rectGetterKey)); //<-- set rect to be size of fab
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //<-- on the next frame...
      setState(() => rect = rect.inflate(
          1.8 * MediaQuery.of(context).size.height)); //<-- set rect to be big
      Future.delayed(
          animationDuration, _goToNextPage); //<-- after delay, go to next page
    });*/
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Searchpage()));
  }

  void _goToNextPage() {
    Navigator.of(context)
        .push(FadeRouteBuilder(page: Searchpage()))
        .then((_) => setState(() => rect = null));
  }

  bool condition = false;
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      new Scaffold(
        /*drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('திருக்குறள்'),
              ),
              ListTile(
                  title: Text("திருவள்ளுவர் வரலாறு"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => History()));
                  }),
              ListTile(
                  title: Text("திருக்குறள்"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Histroykural()));
                  }),
              ListTile(
                  title: Text("அறத்துப்பால்"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Kural(
                                1,
                                "அறத்துப்பால் குறள்",
                                "அறத்துப்பால்",
                                "முதல் பிரிவான ‘அறத்துப்பாலில்’ மனசாட்சி மற்றும் மரியாதை, நல்ல நடத்தை போன்றவற்றை பாயிரவியல், இல்லறவியல், துறவறவியல், ஊழியல் என்ற உட்பிரிவுகளில் தெளிவாக எடுத்துரைக்கிறார்.")));
                  }),
              ListTile(
                  title: Text("பொருட்பால்"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Kural(
                                2,
                                "பொருட்பால் குறள்",
                                "பொருட்பால்",
                                "இரண்டாவது பிரிவான ‘பொருட்பாலில்’ உலக விவகாரங்களில் எவ்வாறு சரியான முறையில் நடந்து கொள்வது என்பதை அரசியல், அமைச்சியல், அங்கவியல், ஒழிபியல் போன்ற உட்பிரிவுகளில் விளக்கியுள்ளார்")));
                  }),
              ListTile(
                  title: Text("இன்பத்துப்பால்"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Kural(
                                3,
                                "இன்பத்துப்பால் குறள்",
                                "இன்பத்துப்பால்",
                                "மூன்றாவது பிரிவான ‘இன்பத்துப்பால்’ அல்லது ‘காமத்துப்பாலில், ஆண்கள் மற்றும் பெண்களுக்கிடையேயான காதல் மற்றும் இன்பத்தைத் தெளிவாக களவியல், கற்பியல் என்ற தலைப்புகளில் எடுத்துரைக்கிறார்.")));
                  })
            ],
          ),
        ),*/
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Text(
            "திருக்குறள்",
            textAlign: TextAlign.center,
            style: new TextStyle(
                color: Colors.black, fontSize: 30, fontFamily: 'tamil'),
          ),
        ),
        body: new Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                children: <Widget>[
                  InkWell(
                      highlightColor: Colors.redAccent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPage(
                                      img: 'aram.jpg',
                                      title: "அறத்துப்பால்",
                                      head: 1,
                                    )));
                      },
                      child: Container(
                        constraints: new BoxConstraints.expand(
                          height: 250.0,
                        ),
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage('assets/img/aram.jpg'),
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
                                    "அறத்துப்பால்",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decorationColor: Colors.red,
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'tamil'),
                                  ))),
                        ]),
                      )),
                  InkWell(
                      highlightColor: Colors.redAccent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPage(
                                    img: 'porul.jpg',
                                    title: "பொருட்பால்",
                                    head: 2)));
                      },
                      child: Container(
                        constraints: new BoxConstraints.expand(
                          height: 250.0,
                        ),
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage('assets/img/porul.jpg'),
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
                                    "பொருட்பால்",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decorationColor: Colors.red,
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'tamil'),
                                  )))
                        ]),
                      )),
                  InkWell(
                      highlightColor: Colors.redAccent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPage(
                                    img: 'kamam.jpg',
                                    title: "காமத்துப்பால்",
                                    head: 3)));
                      },
                      child: Container(
                        constraints: new BoxConstraints.expand(
                          height: 250.0,
                        ),
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage('assets/img/kamam.jpg'),
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
                                    "காமத்துப்பால்",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decorationColor: Colors.red,
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'tamil'),
                                  )))
                        ]),
                      ))
                ],
              ))),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: RectGetter(
            //<-- Wrap Fab with RectGetter
            key: rectGetterKey,
            child: Hero(
                tag: "searchbar_hero",
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: _onTap,
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
                            onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()))},
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
                                        color: active_color,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      Text(
                                        "முகப்பு",
                                        style: TextStyle(
                                            color: active_color,
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
                              padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/15, 5, 0, 0),
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
                                      ),
                                      Text(
                                        "தன்குறிப்பு",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            //fontWeight: FontWeight.bold,
                                            fontFamily: 'Tamil'),
                                      ),
                                    ])))),
                  ],
                ))),
      ),
      _ripple()
    ]);
  }

  Widget _ripple() {
    if (rect == null) {
      return Container();
    }
    return Positioned(
      left: rect.left, //<-- Margin from left
      right: MediaQuery.of(context).size.width -
          rect.right, //<-- Margin from right
      top: rect.top, //<-- Margin from top
      bottom: MediaQuery.of(context).size.height -
          rect.bottom, //<-- Margin from bottom
      child: Container(
        //<-- Blue cirle
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black12,
        ),
      ),
    );
  }
}

class FadeRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteBuilder({@required this.page})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionsBuilder: (context, animation1, animation2, child) {
            return FadeTransition(opacity: animation1, child: child);
          },
        );
}

