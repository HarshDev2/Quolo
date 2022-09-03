import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class HtmlHyperLinkPage extends StatelessWidget {
  const HtmlHyperLinkPage({Key? key}) : super(key: key);

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
                    'HyperLinks',
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
                                    'HyperLink is a text only but, whenever a user clicks on it they will be redricted to a given web url.'),
                          ]),
                    )),
               
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'HyperLink can be defined by <a href=\'url\'>Example<a>',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                
                
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text('"a" is the element by which a hyperlink is defined and attribute "href" is used to tell where the user will be redricted.', style: TextStyle(fontSize: 16),),),
                  Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text('Example -', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
              Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Image.network(
                      'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_hyperlink.png'),
                ),
              Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: Image.network(
                      'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_hyperlink_preview.png'),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: const Text('Hyper Link Example in our app -', style: TextStyle(fontSize: 16),),),
                InkWell(
                  onTap: () => launchURL(context, 'https://quolo.xyz'),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                    child:  Text('Quolo Website', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue.shade300),),),
                ),
              Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 36),
                  child: const Text('Continue to the next section.', style: TextStyle(fontSize: 16),),)
              
              ],
            ),
          ),
        ));
  }
}