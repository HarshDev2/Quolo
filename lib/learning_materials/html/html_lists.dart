import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class HtmlListsPage extends StatelessWidget {
  const HtmlListsPage({Key? key}) : super(key: key);

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
                    'HTML Lists',
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
                                    'HTML Lists allow developers to group a set of related items in lists.'),
                          ]),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'HTML Lists are of two types \n• Ordered List \n• Unordered List',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('List -',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('To display an list we use <ol> element for ordered and <ul> element for undordered List. A list can have multiple childs. To define a child to a list we use <li> element inside <ol> or <ul> element',
                        style: TextStyle(
                          fontSize: 16
                        ))),
                
                 Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('Ordered List -',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
