import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class CssSyntaxPage extends StatelessWidget {
  const CssSyntaxPage({Key? key}) : super(key: key);

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
                    'CSS Syntax',
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
                                    'CSS syntax is pretty simple, you will feel like you are defining values to a element.'),
                          ]),
                    )),
                SizedBox(
                  height: 12,
                ),
                Image.network(
                  'https://raw.githubusercontent.com/HarshDev2/Quolo/master/lib/assets/css_syntax.png',
                  height: 146,
                  width: double.infinity,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text('Explanation -',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'Selector - It is the element which you are styling with css. after writing the selector we have to put all the elemnt styling properties in the brackets {}. In above example, we have used h1 heading as an element and we are styling it with background color cyan.\n \nProperty - It is any styling you want to give to the element in above example we have given background color to h1 heading. \n \nValue - It is value which we want to give to an property of an element.',
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
