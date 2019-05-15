import 'package:flutter/material.dart';

class Histroykural extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "திருக்குறள்",
            style: new TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        body: Container(padding: EdgeInsets.all(10),
            child: Column(children: <Widget>[
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              //color: Colors.red[400],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Text(
                      "திருக்குறள்:",
                      style:
                          new TextStyle(fontSize: 17.0, color: Colors.red[400],fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    new Text(
                      "திருக்குறளை எழுதி, உலக இலக்கிய அரங்கில், தமிழர்கள் பெருமிதமாக நெஞ்சம் நிமிர நிற்கும்படி செய்த உன்னதப் படைப்பாளி, திருவள்ளுவர். தன் அறிவாலும் மற்றும் சிந்தனையாலும் அவர் எழுதிய திருக்குறள், உலகப்புகழ் பெற்ற இலக்கியமாக மாறி, தமிழர்களுக்குப் பெருமையைத் தேடித் தந்திருக்கிறது என்று சொன்னால் அது மிகையாகாது. இந்நூல், சங்க இலக்கிய வகைப்பாட்டில் பதினெண்கீழ்க்கணக்கு எனப்படும் பதினெட்டு நூல்களின் திரட்டில் இருக்கிறது. மேலும், வாழ்வியலின் எல்லா அங்கங்களையும் இனம், மொழி, பாலின பேதங்களின்றி காலம் கடந்தும் பொருந்துவது போல் கூறி உள்ளதால், திருக்குறளை சிறப்பிக்கும் விதமாக ‘உலகப் பொது மறை’, ‘முப்பால்’, ‘ஈரடி நூல்’, ‘உத்தரவேதம்’, ‘தெய்வநூல்’, ‘பொதுமறை’, ‘பொய்யாமொழி’, ‘வாயுறை வாழ்த்து’, ‘தமிழ் மறை’, ‘திருவள்ளுவம்’ போன்ற பல பெயர்களால் சிறப்பித்து அழைக்ககின்றனர்.",
                      style: new TextStyle(fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    new Text(
                      "ஈரடிகளில் உலகத் தத்துவங்களை சொன்னதால், இது ‘ஈரடி நூல்’ என்றும், அறம், பொருள், இன்பம் அல்லது காமம் என்னும் முப்பெரும் பிரிவுகளைக் கொண்டதால், ‘முப்பால்’ என்றும் அழைக்கப்படும் இந்நூல், மனிதர்கள் தம் அகவாழ்விலும் சுமுகமாக கூடி வாழவும், புற வாழ்விலும் இன்பமுடனும், இசைவுடனும், நலமுடனும் வாழவும் தேவையான அடிப்படைப் பண்புகளை விளக்குகிறது.",
                      style: new TextStyle(fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    new Text(
                      "இந்நூல் அறத்துப்பால், பொருட்பால் மற்றும் காமத்துப்பால் (இன்பத்துப்பால்) என்னும் மூன்று பிரிவுகளைக் கொண்டது. முதல் பிரிவில் 38 அத்தியாயங்களும், இரண்டாவது பிரிவில் 70 அத்தியாயங்களும் மற்றும் மூன்றாவது பிரிவில் 25 அத்தியாயங்களும் உள்ளன. ஒவ்வொரு அத்தியாயத்தில் பத்து ஈரடி குறள்கள் என மொத்தம் 1330 குறள்கள் உள்ளன.",
                      style: new TextStyle(fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    new Text(
                      "திருக்குறளில் உள்ள அனைத்து கருத்துகளும், உலகில் உள்ள அனைத்து திருக்குறள் சமயங்களுக்கும் பொருந்துவதாக உள்ளது. இந்நூல், ஏறக்குறைய 2000 ஆண்டு பழமையானது என்று கணிக்கப்பட்டாலும், இதை இயற்றப்பட்ட காலம் இன்னும் சரியாக வரையறுக்கப்படவில்லை.",
                      style: new TextStyle(fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ])));
  }
}

class Getdetailvalue {
  final String line1;
  final String line2;
  final String mv;
  final int num;

  Getdetailvalue(this.line1, this.line2, this.mv, this.num);
}
