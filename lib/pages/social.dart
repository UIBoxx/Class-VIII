import 'package:classviii/utils/ch_content.dart';
import 'package:flutter/material.dart';

class SocialPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const SocialPage({super.key, required this.onToggleDarkMode});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  bool isDarkMode = false;
  List socialUnits = [
    'एकाइ १ हामी र हाम्रो समाज',
    'एकाइ २ हाम्रो मानव मूल्य मान्यता',
    'एकाइ ३ नागरिक चेतना, कर्तव्य र अधिकार',
    'एकाइ ४ सामाजिक समस्या र विकृतिहरु',
    'एकाइ ५ हाम्रो विगत',
    'एकाइ ६ हाम्रो आर्थिक क्रियाकलाप',
    'एकाइ ७ हाम्रो पृथ्वी',
    'एकाइ ८ जनसंख्या र यसको व्यवस्थापन',
    'एकाइ ९ अन्तर्राष्ट्रिय सम्बन्ध,सम्स्यामयिक घटना र सुचना प्रविधि',
  ];
  List socialChapters = [
    [
      'पाठ १ विकास र नेपाल',
      'पाठ २ विकासका पूर्वाधार',
      'पाठ ३ सङ्घीय राज्यको आवधारणा',
      'पाठ ४ स्थानीय, प्रादेशिक र सङ्घीय सरकार',
      'पाठ ५ मेरो प्रदेश'
    ],
    [
      'पाठ १ हाम्रा आदर्श व्यवहार',
      'पाठ २ नेपालमा प्रचालित सामाजिक परम्परा र प्रचलन',
      'पाठ ३ नेपालमा जातिगत परम्परा र संस्कार',
      'पाठ ४ हाम्रा धार्मिक एवं सांस्कृतिक क्रियाकलाप',
      'पाठ ५ विविधतामा एकता',
      'पाठ ६ नेपालमा सामाजिक सद्भाव, सहिष्णुता र एकता',
      'पाठ ७ नेपालका राष्ट्रिय सम्पदाहरु',
      'पाठ ८ अन्तर्राष्ट्रिय व्यक्तित्त्वहरु',
      'पाठ ९ स्काउट र अनुशासन',
    ],
    [
      'पाठ १ संविधानको परिचय',
      'पाठ २ सङ्घीय संस',
      'पाठ ३ सङ्घीय सरकार',
      'पाठ ४ न्यायपालिका',
      'पाठ ५ समावेशीकरण',
      'पाठ ६ लोकतान्त्रिक गणतन्त्र',
      'पाठ ७ सुशासन'
    ],
    [
      'पाठ १ सामाजिक विकृति अन्त्य गरौ',
      'पाठ २ सामाजिक समस्या',
      'पाठ ३ सामाजिक विकृति र समस्या समाधानका उपाय',
      'पाठ ४ सामाजिक समस्या र अन्तर्राष्ट्रिय सङ्घसंस्थाको भूमिका',
      'पाठ ५ द्वन्द्व व्यवस्थापन'
    ],
    [
      'पाठ १ नेपाल शब्दको अर्थ र उत्पत्ति',
      'पाठ २ प्राचिन नेपाल : आर्थिक र सामाजिक अवस्था',
      'पाठ ३ काठमाडौं उपत्यकाको सभ्यता',
      'पाठ ४ हाम्रा वीर सहिद',
      'पाठ ५ लोकतान्त्रिक गणतन्त्र र यसका उपलब्धिहरु',
      'पाठ ६ ग्रिस र रोमको सभ्यता',
      'पाठ ७ सिन्धु उपत्यकाको सभ्यता',
      'पाठ ८ पुर्नजागरण र यसको प्रभाव'
    ],
    [
      'पाठ १ मौद्रिक कारोबार',
      'पाठ २ नेपालका वित्त्तिया संस्थाहरु',
      'पाठ ३ नेपालमा पर्यटन',
      'पाठ ४ वैदेशिक व्यापार',
      'पाठ ५ वैदेशिक रोजगारी'
    ],
    [
      'पाठ १ पृथ्वीको दैनिक र वार्षिक गति',
      'पाठ २ मौसम र हावापानी',
      'पाठ ३ जलवायु परिवर्तन',
      'पाठ ४ नेपालका छिमेकी देशहरु',
      'पाठ ५ सार्क राष्ट्रहरु र नेपाल',
      'पाठ ६ विपत् व्यवस्थापन',
      'पाठ ७ नक्सा तथा प्रयोगात्मक कार्य'
    ],
    [
      'पाठ १ जनसंख्या परिवर्तनका निर्धारक तत्त्वहरू',
      'पाठ २ नेपालको जनसंख्या',
      'पाठ ३ नेपालको जनसंख्याको वितरण र जनघनत्व',
      'पाठ ४ नेपालमा बसाइसराइ'
    ],
    [
      'पाठ १ कुटनीतिक नियोग',
      'पाठ २ बिमस्टेक र नेपाल',
      'पाठ ३ संयुक्त राष्ट्रसंघ',
      'पाठ ४ साइबर अपराध',
      'पाठ ५ सम्स्यामयिक घटना'
    ],
  ];

  List socialChaptersContent = [
    [],
  ];

  static const chapterContent = 'The content will be uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social'),
        elevation: 0,
        actions: [
          Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
              }),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: socialChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapters(
                              countList: socialChapters[index].length,
                              chapterName: socialChapters[index],
                              // chapterContent: socialChaptersContent[index],
                              chapterContent: chapterContent,
                              subName: 'Social',
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      socialUnits[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class MyChapters extends StatefulWidget {
  final int countList;
  final String subName;
  final List chapterName;
  // final List chapterContent;
  final String chapterContent;
  const MyChapters(
      {super.key,
      required this.countList,
      required this.chapterName,
      required this.subName,
      required this.chapterContent});

  @override
  State<MyChapters> createState() => _MyChaptersState();
}

class _MyChaptersState extends State<MyChapters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subName),
        elevation: 0,
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: widget.countList,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: widget.chapterName[index],
                              // chapterContent: widget.chapterContent[index],
                              chapterContent: widget.chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      widget.chapterName[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
