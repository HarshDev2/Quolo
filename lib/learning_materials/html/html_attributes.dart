import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class HtmlAttributesPage extends StatelessWidget {
  const HtmlAttributesPage({Key? key}) : super(key: key);

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
                    'HTML Attributes',
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
                                    'As, there are alot of elements in html, there are also attributes for defining properties of an element.'),
                          ]),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'An attribute is defined in the following way-',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('<p color = \'red\'>Quolo</p>',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: Image.network(
                      'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_structure_codeview.png'),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                  child: const Text(
                    'Explanation - an attribute is putted in a opening tag( for eg. - <p>). \n \n Syntax of is pretty simple. \n It\'s just\n \n<element property = \'value\'>Example</p>',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 36),
                  child: const Text(
                    'An attribute can be used to define a property of a element. you will learn uses of html attributes in the next sections.',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
