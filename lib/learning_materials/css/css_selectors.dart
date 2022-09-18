import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class CssSelectorsPage extends StatelessWidget {
  const CssSelectorsPage({Key? key}) : super(key: key);

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
                    'CSS Selectors',
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
                                    'CSS Selectors are used to select the element which you want to style.'),
                          ]),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'We will seeing some type of selectors on this section and other types of selectors will be discussed in further sections.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        '• Type Selector \n• Class Selector \n• Id Selector',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'Type Selector - It selects all elements of a specific name for example p {} will select all paragraph elements present in the html page. \n \nClass Selector - It will select all the elements with a specific class. \n \nId Selector - It will select a single element with a specific id in a element attribute.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 36),
                  child: const Text(
                    'Continue to the next section.',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
