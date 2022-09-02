import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class HtmlParagraphPage extends StatelessWidget {
  const HtmlParagraphPage({Key? key}) : super(key: key);

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
                    'HTML Paragraph',
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
                                    'Paragraph are a way to display text in HTML, they are mostly used for defining paragraphs in articles, blogs, or anything but we will see how to display text on a web page with them.'),
                          ]),
                    )),
                Image.network(
                    'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_structure_codeview.png'),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'As you have seen how to display elements in previous section paragraphs are used in same way.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                
                
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: const Text('Syntax for tying displaying a paragraph is - <p>Example</p> , here <p> is opening tag and </p> is closing tag.', style: TextStyle(fontSize: 16),),),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: const Text('Here, we have wrote Hello World inside body element.', style: TextStyle(fontSize: 16),),),
                
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 36),
                  child: const Text('Let\'s continue to the next section.', style: TextStyle(fontSize: 16),),)
              ],
            ),
          ),
        ));
  }
}