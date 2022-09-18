import 'package:flutter/material.dart';
import 'package:quolo/pages/quizz_page.dart';
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
              const SizedBox(
                height: 240,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
                width: double.infinity,
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
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(8)),
                      width: 120,
                      child: const Text('Start',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
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
