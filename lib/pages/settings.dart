import 'package:flutter/material.dart';
import 'package:quolo/utils/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppThemes.lightTheme(context), home: Scaffold(
      appBar: AppBar(title: Text('Settings'),),
    ));
  }
}
