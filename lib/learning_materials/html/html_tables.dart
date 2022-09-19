import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class HtmlTablesPage extends StatelessWidget {
  const HtmlTablesPage({Key? key}) : super(key: key);

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
                    'HTML Tables',
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
                                    'Tables are used to display data in form of tables in html.'),
                          ]),
                    )),
               
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'We have alot of elements to display a table like <table> <tr> <th> <td> and other.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
               
                
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'Syntax -',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))),
                
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'We use <table> to display a table and then use <tr> to create a row in the table, we can use <th> to make a row head which will be just a bold text , we use <td> to display data in the table.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'Horizontal table -',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 36),
                  child: const Text('Continue to the next section.', style: TextStyle(fontSize: 16),),)
              ],
            ),
          ),
        ));
  }
}