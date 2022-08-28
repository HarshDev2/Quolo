import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: const Icon(Icons.star)),
                  Container(
                    margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: const Text(
                      'Rate',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                    ],
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, 'settings'),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: const Icon(Icons.settings)),
                            Container(
                              margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                              child: const Text(
                                'Settings',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      const AlertDialog(
                        title: Text('Write your feedback'),
                        content: Text('hi'),
                      );
                      showDialog(
                          context: context,
                          builder: (_) => const AlertDialog());
                    },
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: const Icon(Icons.feedback)),
                          Container(
                            margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: const Text(
                              'FeedBack',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
