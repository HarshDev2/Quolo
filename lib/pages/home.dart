import 'package:flutter/material.dart';

import '../utils/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme(context),
        home: Scaffold(
          appBar: AppBar(
          title: const Text('Quolo'),
         )
       )
     );
  }
}
