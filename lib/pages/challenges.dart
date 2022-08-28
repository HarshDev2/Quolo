import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';

class ChallengesPages extends StatelessWidget {
  const ChallengesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppThemes.lightTheme(context),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Challenges'),
          ),
          body: SafeArea(
            child: Column(children: [
              Container(
                alignment: Alignment.center,
                height: 180,
                margin: const EdgeInsets.fromLTRB(8, 180, 8, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade200,
                ),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Text('HTML BEGINNER',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: GoogleFonts.poppins().fontFamily)),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: const Text(
                        '20 Questions',
                        style: TextStyle(fontSize: 18),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 24, 140, 0),
                        child: InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/html_beginner_test');
                            },
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade200,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Start',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 26, 20, 0),
                          child: const Text(
                            'Easy',
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ]),
              ),
            ]),
          ),
        ));
  }
}
