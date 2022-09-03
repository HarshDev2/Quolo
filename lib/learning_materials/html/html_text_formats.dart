import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class HtmlTextFormatsPage extends StatelessWidget {
  const HtmlTextFormatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppThemes.lightTheme(context),
        home: Scaffold(
          appBar: AppBar(
              leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => Navigator.pop(context),
          )),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: const Text(
                    'Text Formats',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontFamily: GoogleFonts.poppins().fontFamily),
                          children: const <TextSpan>[
                            TextSpan(
                                text:
                                    'There are alot of forms in which text can be written in HTML. Text formats are normal elements, only they do is that, they change the form of text.'),
                          ]),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('List of text format elements -',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: const Text(
                    ' • <b> - Bold text \n • <strong> - Important text \n • <i> - Italic text \n • <em> - Emphasized text \n • <mark> - Marked text \n • <small> - Smaller text \n • <big> - Bigger Text \n • <del> - Deleted text \n • <u> - Underlined Text \n • <ins> - Inserted text \n • <sub> - Subscript text \n • <sup> - Superscript text',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Bold Text -',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_bold.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: const Text(
                    '<strong> element behaves as bold text you just need to use <strong>Text Here</strong>',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Italic Text and Emphasized Text -',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Italic Text and Emphasized Text properties are same, you can use italic and emasized text by <i> and <em> respectively.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_italic.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Marked Text -',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    '<mark> element defines the text as highlighted.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_marked.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Smaller Text',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    '<small> element makes the text smaller in size.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_small.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Deleted Text -',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
                  child: const Text(
                    '<del> defines the text as deleted and the browser will strikethrough the text.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_deleted.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Underlined and Inserted Text -',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
                  child: const Text(
                    '<u> element makes the text underlined and <ins> element defines the text as inserted and the browser will display the text as underlined.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_underlined.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text(
                    'Subscript and Superscript Text-',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
                  child: const Text(
                    '<sub> element makes the text little-bit down than the text near it and <sup> element makes the text upper than the text near it.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Code View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_text_sub_superscript.png')),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 6, 12, 0),
                  child: const Text(
                    'Browser View -',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
