import 'package:flutter/material.dart';
import 'package:quolo/pages/css_beginner_test.dart';
import 'package:quolo/pages/html_beginner_test.dart';
import 'package:quolo/utils/themes.dart';

class ChallengesPages extends StatelessWidget {
  const ChallengesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme(context),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 5.2),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(24)),
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                padding: const EdgeInsets.fromLTRB(6, 16, 6, 20),
                child: Column(
                  children: [
                    const Text(
                      'HTML Beginner',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Difficulty - Easy',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HtmlBeginnerTest(),
                          )),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 225, 255),
                            borderRadius: BorderRadius.circular(12)),
                        width: 120,
                        child: const Text('Start',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(24)),
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                padding: const EdgeInsets.fromLTRB(6, 16, 6, 20),
                child: Column(
                  children: [
                    const Text(
                      'CSS Beginner',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Difficulty - Easy',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizzScreen(),
                          )),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 48, 225, 255),
                            borderRadius: BorderRadius.circular(12)),
                        width: 120,
                        child: const Text('Start',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
