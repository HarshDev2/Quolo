import 'package:flutter/material.dart';
import 'package:quolo/utils/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme(context),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
            leading: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Dark Theme'),
                    Switch(value: true, onChanged: (value) {})
                  ],
                ),
                InkWell(
                  onTap: () => showAboutDialog(context: context),
                  child: const Text('Licenses'),
                ),
              ],
            ),
          )),
    );
  }
}
