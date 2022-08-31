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
                                    'HTML have a very basic structure. It consists of body-like structure by elemts such as <head>, <body> and <footer>.'),
                          ]),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'In this course you will learn funddamentals of HTML, CSS, and JavaScript.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Image.network('https://github.com/HarshDev2/quol/blob/master/lib/assets/html_structure_codeview.png'),
                
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 36),
                  child: const Text('This course is completely beginner friendly so, you can now start learning.', style: TextStyle(fontSize: 16),),)
              ],
            ),
          ),
        ));
  }
}