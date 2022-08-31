import 'package:flutter/material.dart';
import 'package:quolo/utils/themes.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: const Text('Prerequisites', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 24, 0, 0),
            child: const Text('HTML is a markup language developed in 1993.', style: TextStyle(fontSize: 16),),
          ),
        ],
      ),)
    );
  }
}
