import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class HtmlStructurePage extends StatelessWidget {
  const HtmlStructurePage({Key? key}) : super(key: key);

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
                      'HTML Structure',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
                                      'HTML have a very basic structure. It consists of body-like structure by elemts such as <head>, <body> and <footer>.'),
                            ]),
                      )),
                  Container(
                      padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                      child: const Text('An HTML file looks like this -',
                          style: TextStyle(
                            fontSize: 16,
                          ))),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                    child: Image.network(
                        'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/html_structure_codeview.png'),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                      'Explanation -',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 6),
                    child: const Text(
                      'HTML file starts with <!DOCTYPE html> , which is newly added in HTML5, It is used to tell the browser about which html version you are using. If we don\'t add <!DOCTYPE html>, then the browser have to guess which version of HTML, we are using and can make problems.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                    child: const Text('Head -', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('All the important content about the page is written here, it is like setting for the page.', style: TextStyle(fontSize: 16),),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                    child: const Text('Body -', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
                    child: const Text('All the content which will be visible to the user on web page is written here, it is the main part of the page.', style: TextStyle(fontSize: 16),),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
                    child: const Text('Then, the body is again closed with HTML tag. You will learn about html syntax and how it works in next sections.', style: TextStyle(fontSize: 16),),
                  )
                ]))));
  }
}
