import 'package:classviii/utils/ch_content.dart';
import 'package:flutter/material.dart';

class NepaliPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const NepaliPage({super.key, required this.onToggleDarkMode});

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  bool isDarkMode = false;
  List nepaliChapters = [
    'पाठ १ सहिदहरुको सम्झनामा',
    'पाठ २ साकार सपना',
    'पाठ ३ स्वामी प्रपन्नाचार्य',
    'पाठ ४ व्यावसायिक चिठी',
    'पाठ ५ मानव अधिकार',
    'पाठ ६ अमर पुत्र',
    'पाठ ७ पदमार्ग',
    'पाठ ८ फर्क आफ्नै देश',
    'पाठ ९ नेपालको वैदेशिक व्यापार',
    'पाठ १० हजुरआमाको जन्मोत्सव',
    'पाठ ११ एकजोर जुत्ता',
    'पाठ १२ जुन्को तोबेई',
    'पाठ १३ प्यारो प्रकृति',
    'पाठ १४ शैक्षिक  भ्रमण',
    'पाठ १५ से गुम्बाको सुन्दरता',
    'पाठ १६ सम्पादकलाई चिठी',
    'पाठ १७ डल्ले खोला',
    'पाठ १८ सुनाइ पाठ'
  ];
  // List chapterContent = [
  // ];

  static const chapterContent = 'The content will be uploaded soon!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali'),
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
          itemCount: nepaliChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: nepaliChapters[index],
                              // chapterContent: chapterContent[index],
                              chapterContent: chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      nepaliChapters[index],
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
