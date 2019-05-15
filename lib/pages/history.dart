import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "திருவள்ளுவர் வரலாறு",
            style: new TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                //color: Colors.red[400],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new Text(
                        "திருவள்ளுவர் வாழ்க்கை வரலாறு:",
                        style: new TextStyle(
                           fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         உலகத் தத்துவங்கள் அனைத்தையும் ‘திருக்குறள்’ என்னும் உன்னதப் படைப்பில் மக்களுக்கு எடுத்துச் சொன்னவர், திருவள்ளுவர். உலகளாவிய தத்துவங்களைக் கொண்ட திருக்குறளைப் படைத்து, உலக இலக்கிய அரங்கில் தமிழ்மொழிக்கென்று ஓர் உயர்ந்த இடத்தை நிலைப்பெற செய்தவர். இவர் உலக மக்களால், ‘தெய்வப்புலவர்’, ‘பொய்யில் புலவர்’, ‘நாயனார்’, ‘தேவர்’, ‘செந்நாப்போதர்’, ‘பெருநாவலர்’, ‘பொய்யாமொழிப் புலவர்’ என்றெல்லாம் பல பெயர்களில் அழைக்கப்படுகிறார். அவர் எழுதிய திருக்குறள், வாழ்வியலின் எல்லா அங்கங்களையும் இனம், மொழி, பாலின பேதங்களின்றி காலம் கடந்தும் பொருந்துவது போல் கூறி உள்ளதால், திருக்குறளை சிறப்பிக்கும் விதமாக ‘உலகப் பொது மறை’, ‘முப்பால்’, ‘ஈரடி நூல்’, ‘உத்தரவேதம்’, ‘தெய்வநூல்’, ‘பொதுமறை’, ‘பொய்யாமொழி’, ‘வாயுறை வாழ்த்து’, ‘தமிழ் மறை’, ‘திருவள்ளுவம்’ போன்ற பல பெயர்களால் சிறப்பித்து அழைக்கின்றனர். அத்தகைய சிறப்புமிக்கத் திருவள்ளுவரின் வாழ்க்கை வரலாறு மற்றும் உலக இலக்கிய அரங்கில் அவர் படைத்த சாதனைகள் பற்றியறிய மேலும் தொடர்ந்து படிக்கவும்..",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "வாழ்ந்த காலம்:",
                        style: new TextStyle(
                           fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         2 ஆம் நூறாண்டு முதல் 8 நூற்றாண்டு வரையிலான இடைப்பட்ட காலம்",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "பிறப்பிடம்:",
                        style: new TextStyle(
                           fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         மயிலாப்பூர், தமிழ் நாடு மாநிலம், இந்தியா",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "பிறப்பு:",
                        style: new TextStyle(
                           fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         திருவள்ளுவர் அவர்களின் பிறப்பு மற்றும் பிறப்பிடத்திற்கான சரியான சான்றுகள் இல்லை என்று தான் கூறவேண்டும். ஏனென்றால், அவர் கி.மு.31 ஆம் ஆண்டு பிறந்திருக்கிறார் என்றும், மதுரையில் பிறந்ததாகவும், சென்னையில் உள்ள மயிலாப்பூரில் பிறந்ததாகவும் சிலரும் கூறுகின்றனர். மேலும், அவர் ஆதி – பகவன் என்ற பெற்றோருக்குப் பிறந்ததாகவும் சிலர் சொல்கின்றனர். ஆனால், இதுவரை இவை எதுவுமே உறுதிப்படவில்லை.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         மேலும் சிலர், அவர் ஒரு கிறித்துவர் என்றும், சமண மதத்தவர் என்றும் பவுத்தர் என்றெல்லாம் கூட பொய்யானத் தகவல்களைப் பரிமாறுகின்றனர்.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "அவர் இயற்றிய வேறு நூல்கள்:",
                        style: new TextStyle(
                           fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         திருக்குறளைத் தவிர, திருவள்ளுவர் மருத்துவம் பற்றிய இரு நூல்களான ‘ஞான வெட்டியான்’ மற்றும் ‘பஞ்ச ரத்னம்’ ஆகிய நூல்களை இயற்றியுள்ளதாகப் பலரும் தெரிவிக்கின்றனர்.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "நினைவுச் சின்னங்கள்:",
                        style: new TextStyle(
                           fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.red[400]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         இந்தியாவின் தென் கோடியில் அமைந்துள்ள முக்கடல் சங்கமிக்கும் இடமான கன்னியாகுமரியில், அவரின் புகழைப் பறைசாற்றும் விதமாக அவருக்கென்று ஒரு பிரம்மாண்டமான சிலை ஒன்று தமிழக அரசால் நிறுவப்பட்டுள்ளது. 133 அடி உயரமுள்ள இச்சிலை, 30 அடி உயரமுள்ள பாறை மீது அமைந்துள்ளது. இதனை அமைக்க 10 ஆண்டுகள் தேவைப்பட்டது என இதை வடிவமைத்த சிற்பி கணேசன் கூறியுள்ளார். மேலும், சிலையின் உட்புறச் சுவற்றில் ஒவ்வொரு அதிகாரத்திலிருந்து ஒரு குறள் வீதம் 133 குறட்பாக்கள் தமிழிலும், ஆங்கிலத்திலும் பொறிக்கப்பட்டுள்ளன.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         அவர் நினைவாக, சென்னையில் ‘வள்ளுவர் கோட்டம்’ ஒன்று அமைக்கப்பட்டுள்ளது. அவர் இயற்றிய திருக்குறளின் 1330 குறள்களும், இங்குள்ள குரல் மண்டபத்தில் பொறிக்கப்பட்டுள்ளது.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         லண்டனிலுள்ள ரஸ்ஸல் ஸ்கொயரில் இருக்கும் ‘ஸ்கூல் ஆஃப் ஓரியண்டல் மற்றும் ஆப்ரிக்கன் ஸ்டடீஸ்’ என்னும் கல்வி நிறுவனத்தில், அவரது திருவுருவச்சிலை நிறுவப்பட்டுள்ளது.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                      ),
                      new Text(
                        "         திருவள்ளுவர் மறைந்தாலும், அவர் படைத்த திருக்குறள் என்னும் உன்னத நூல், எக்கால மனிதர்களுக்கு ஓர் வழிகாட்டியாக இருந்து தமிழர்களின் புகழையும் உலகளவில் ஓங்கச் செய்கிறது.",
                        style:
                            new TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
