import 'package:flutter/material.dart';
import './history.dart';
import './kural.dart';
import './historykural.dart';
import 'package:rect_getter/rect_getter.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Duration animationDuration = Duration(milliseconds: 300);
  final Duration delay = Duration(milliseconds: 200);
  GlobalKey rectGetterKey = RectGetter.createGlobalKey();
  Rect rect;
  
 void _onTap() async {
    setState(() => rect = RectGetter.getRectFromKey(rectGetterKey));  //<-- set rect to be size of fab
    WidgetsBinding.instance.addPostFrameCallback((_) {                //<-- on the next frame...
      setState(() =>
          rect = rect.inflate(0.8 * MediaQuery.of(context).size.height)); //<-- set rect to be big
      Future.delayed(animationDuration , _goToNextPage); //<-- after delay, go to next page
    });
  }

  void _goToNextPage() {
    Navigator.of(context)
        .push(FadeRouteBuilder(page: NewPage()))
        .then((_) => setState(() => rect = null));
  }
  
  bool condition = false;
 

  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[ new Scaffold(
      drawer: Drawer(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Histroykural()));
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
      ),
      appBar: AppBar(
        title: Text(
          "திருக்குறள்",
          style: new TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                          Container(
                            height: 120.0,
                            width: 120.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                heroTag: "btn1",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => History()));
                                },
                                child: Text(
                                  "திருவள்ளுவர் வரலாறு",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 5),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                        ],
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                          Container(
                            height: 120.0,
                            width: 120.0,
                            child: FittedBox(
                              child: FloatingActionButton(
                                heroTag: "btn2",
                                onPressed: () {
                                  setState(() {
                                    if (this.condition == false) {
                                      this.condition = true;
                                    } else {
                                      this.condition = false;
                                    }

                                    print(this.condition);
                                  });
                                },
                                child: Text(
                                  "அதிகாரங்கள்",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 5),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                          ),
                        ],
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                ),
                Opacity(
                  opacity: this.condition ? 1.0 : 0.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                      heroTag: "btn3",
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Kural(
                                                    1,
                                                    "அறத்துப்பால் குறள்",
                                                    "அறத்துப்பால்",
                                                    "முதல் பிரிவான ‘அறத்துப்பாலில்’ மனசாட்சி மற்றும் மரியாதை, நல்ல நடத்தை போன்றவற்றை பாயிரவியல், இல்லறவியல், துறவறவியல், ஊழியல் என்ற உட்பிரிவுகளில் தெளிவாக எடுத்துரைக்கிறார்.")));
                                      },
                                      child: Text(
                                        "அறத்துப்பால்",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                ),
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                      heroTag: "btn4",
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Kural(
                                                    2,
                                                    "பொருட்பால் குறள்",
                                                    "பொருட்பால்",
                                                    "இரண்டாவது பிரிவான ‘பொருட்பாலில்’ உலக விவகாரங்களில் எவ்வாறு சரியான முறையில் நடந்து கொள்வது என்பதை அரசியல், அமைச்சியல், அங்கவியல், ஒழிபியல் போன்ற உட்பிரிவுகளில் விளக்கியுள்ளார்")));
                                      },
                                      child: Text(
                                        "பொருட்பால்",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                ),
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                      heroTag: "btn5",
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Kural(
                                                    3,
                                                    "இன்பத்துப்பால் குறள்",
                                                    "இன்பத்துப்பால்",
                                                    "மூன்றாவது பிரிவான ‘இன்பத்துப்பால்’ அல்லது ‘காமத்துப்பாலில், ஆண்கள் மற்றும் பெண்களுக்கிடையேயான காதல் மற்றும் இன்பத்தைத் தெளிவாக களவியல், கற்பியல் என்ற தலைப்புகளில் எடுத்துரைக்கிறார்.")));
                                      },
                                      child: Text(
                                        "இன்பத்துப்பால்",
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 5),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
                )
              ],
            )))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: RectGetter(           //<-- Wrap Fab with RectGetter
        key: rectGetterKey,child: FloatingActionButton(
        backgroundColor: Colors.white,  
        onPressed: _onTap,
        tooltip: 'தேடு',
        child: Icon(Icons.search,size: 26,color: Colors.black,),
        elevation: 2.0,
      )),
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
                          onTap: () => {},
                          child: Container(padding: EdgeInsets.fromLTRB(15,0,0,0), child:Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.fromLTRB(11, 5, 1, 2)),
                                Icon(
                                  Icons.home,
                                  size: 26,
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
                          SizedBox(height: 25,),
                          Container(padding: EdgeInsets.fromLTRB(32,5,0,0), child:Text(
                            "தேடு",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      //fontWeight: FontWeight.bold,
                                      fontFamily: 'Tamil'),
                                
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                          onTap: () => {},
                          child: Container(padding: EdgeInsets.fromLTRB(0, 0, 15, 0), child:Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 10, 2)),
                                Icon(
                                  Icons.settings,
                                  size: 26,
                                ),
                                Text(
                                  "அமைப்புகள்",
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
    _ripple()]);
  }

  Widget _ripple() {
  if (rect == null) {
    return Container();
  }
  return Positioned(
    left: rect.left,                                          //<-- Margin from left
    right: MediaQuery.of(context).size.width - rect.right,    //<-- Margin from right
    top: rect.top,                                            //<-- Margin from top
    bottom: MediaQuery.of(context).size.height - rect.bottom, //<-- Margin from bottom
    child: Container(                                         //<-- Blue cirle
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.redAccent,
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

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewPage'),
      ),
    );
  }
}