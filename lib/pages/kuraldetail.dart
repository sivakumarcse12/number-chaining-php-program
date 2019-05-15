import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:audioplayers/audioplayers.dart';
import 'dart:convert';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:tts/tts.dart';
import 'package:flutter_tts/flutter_tts.dart';
class Detailscreen extends StatefulWidget {
  String line1;
  String line2;
  String mv;
  String sp;
  String mk;
  int num = 0;
  int file;
  String title= "குறள் விளக்கம்";

  Detailscreen(
      {Key key,
      @required this.line1,
      @required this.line2,
      @required this.mv,
      @required this.sp,
      @required this.mk,
      @required this.num,
      this.file,@required this.title})
      : super(key: key);
  @override
  DetailscreenState createState() => new DetailscreenState();
}

class DetailscreenState extends State<Detailscreen> {
  

  int result;
  List listvaldecode;
  bool _progressBarActive = false;
  Color initial_color=Colors.white;
  bool _playbutton=true;
   AudioPlayer audioPlayer = new AudioPlayer();
   @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerCompletion.listen((event) {
     
      setState(() {
       initial_color=Colors.white; 
       _playbutton=true;
      });
    });
  }
 
  FlutterTts flutterTts = new FlutterTts();
  Future _speak() async{
    await flutterTts.setLanguage("ta_IN");
    List<dynamic> languages = await flutterTts.getLanguages;
    print(languages);
    var result = await flutterTts.speak("அகர முதல எழுத்தெல்லாம் ஆதி பகவன் முதற்றே உலகு");
   // if (result == 1) setState(() => ttsState = TtsState.playing);
}
  load() async{
    audioPlayer.onPlayerCompletion.listen((event) {
    
    setState(() {
     initial_color=Colors.white;
     _playbutton=true; 
    });
  });
  }
  speak() async {
    
    final languages = await Tts.getAvailableLanguages();
    var isGoodLanguage = await Tts.isLanguageAvailable("ta");
    print(isGoodLanguage);
    await Tts.setLanguage("tamil");
    Tts.speak('அகர முதல எழுத்தெல்லாம் ஆதி பகவன் முதற்றே உலகு');
  }
  play() async {
    setState(() {
     initial_color=Color(0xFF28A745); 
    _playbutton=false;
    });
    print('siva'+initial_color.toString());
    String url = "https://www.pictuscode.com/kural/mp3/" +
        widget.num.toString() +
        ".mp3";
    result = await audioPlayer.play(url);
    if (result == 1) {
       setState(() {
     //initial_color=Colors.white; 
    
    });
    
    }
  }

  pause() async {
    int result = await audioPlayer.pause();
  }

  stop() async {
    int result = await audioPlayer.stop();
    setState(() {
     initial_color=Colors.white;
     _playbutton=true; 
    });
  }

  Future<String> previous_kural() async {
    int newnum = widget.num - 2;
    if (newnum >= 0) {
      widget.num = newnum;
    }
    var listval = await rootBundle.loadString('assets/file.json');
    listvaldecode = json.decode(listval);
    if (listvaldecode.length >= newnum && newnum >= 0) {
      setState(() {
        widget.line1 = listvaldecode[newnum]['line1'];
        widget.line2 = listvaldecode[newnum]['line2'];
        widget.mv = listvaldecode[newnum]['mv'];
        widget.sp = listvaldecode[newnum]['sp'];
        widget.mk = listvaldecode[newnum]['mk'];
        widget.num = listvaldecode[newnum]['number'];

      });
    }
  }

  Future<String> next_kural() async {
    _progressBarActive = true;
    int newnum = widget.num;
    var listval = await rootBundle.loadString('assets/file.json');
    listvaldecode = json.decode(listval);

    if (listvaldecode.length >= newnum && newnum >= 0) {
      setState(() {
        widget.line1 = listvaldecode[newnum]['line1'];
        widget.line2 = listvaldecode[newnum]['line2'];
        widget.mv = listvaldecode[newnum]['mv'];
        widget.sp = listvaldecode[newnum]['sp'];
        widget.mk = listvaldecode[newnum]['mk'];
        widget.num = listvaldecode[newnum]['number'];
        _progressBarActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.title,
          style: new TextStyle(color: Colors.black, fontSize: 26,fontFamily: "tamil"),
        ),
      ),
      body: _progressBarActive == true
          ? const CircularProgressIndicator()
          : Container(
              child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          //color: Colors.red[400],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                new Text(
                                  "குறள்:",
                                  style: new TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.red[400],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'tamil'),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                ),
                                new Text(
                                  widget.line1,
                                  style: new TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                new Text(
                                  widget.line2,
                                  style: new TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                ),
                                new Text(
                                  "மு.வரதராசனார் உரை:",
                                  style: new TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.red[400],
                                       fontFamily: 'tamil',
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                ),
                                new Text(
                                  widget.mv,
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                ),
                                new Text(
                                  "சாலமன் பாப்பையா உரை:",
                                  style: new TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.red[400],
                                      fontWeight: FontWeight.bold, fontFamily: 'tamil'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                ),
                                new Text(
                                  widget.sp,
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                ),
                                new Text(
                                  "கலைஞர் உரை:",
                                  style: new TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.red[400],
                                      fontWeight: FontWeight.bold, fontFamily: 'tamil'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                ),
                                new Text(
                                  widget.mk,
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                ),
                               Container(color: Colors.black, child: Center(
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                       new IconButton(
                                        icon: Icon(Icons.arrow_back,
                                            size: 30,
                                            color: Colors.white),
                                        iconSize: 30,
                                        tooltip: 'முந்தைய',
                                        onPressed: previous_kural,
                                      ),
                                      new IconButton(
                                        icon: Icon(_playbutton==true?Icons.play_arrow:Icons.pause,
                                            size: 30,
                                            color: initial_color),
                                        iconSize: 30,
                                        tooltip: 'தொடங்க',
                                        onPressed: play,
                                      ),
                                      /*new IconButton(
                                        icon: Icon(Icons.pause,
                                            size: 30,
                                            color: Colors.white),
                                        iconSize: 30,
                                        tooltip: 'இடைநிறுத்தம்',
                                        onPressed: _speak,
                                      ),*/
                                      new IconButton(
                                        icon: Icon(Icons.stop,
                                            size: 30,
                                            color: Colors.white),
                                        iconSize: 30,
                                        tooltip: 'நிறுத்த',
                                        onPressed: stop,
                                      ),
                                       new IconButton(
                                        icon: Icon(Icons.arrow_forward,
                                            size: 30,
                                            color: Colors.white),
                                        iconSize: 30,
                                        tooltip: 'அடுத்த',
                                        onPressed: next_kural,
                                      )
                                    ],
                                  ),
                                )),
                                
                                Padding(padding: EdgeInsets.all(5),),
                                 AdmobBanner(
                                  adUnitId:
                                      'ca-app-pub-4527484817137575~4555676851',
                                  adSize: AdmobBannerSize.BANNER,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
    );
  }
}


