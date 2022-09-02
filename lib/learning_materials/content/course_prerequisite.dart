import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quolo/utils/themes.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class CoursePrerequisitesPage extends StatelessWidget {
  const CoursePrerequisitesPage({Key? key}) : super(key: key);

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
                    'Prerequisites',
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
                                    'First of all, this course is beginner friendly so, you dont need to learn anything before getting into this course.'),
                          ]),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'We want that you should have a code editor installed on your system so, you will be able to write and compile codes along this course.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: const Text(
                        'You can download these following code editors from play store or any store you wish to.',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      InkWell(
                        onTap: () => launchURL(context, 'https://play.google.com/store/apps/details?id=io.spck'),
                        child: Text('Spck Editor (Our recommendation)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue.shade400,
                            )),
                      ),
                      InkWell(
                        onTap: () => launchURL(context, 'https://play.google.com/store/apps/details?id=com.paprbit.dcoder'),
                        child: Text('Dcoder',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue.shade400
                            )),
                      ),
                      InkWell(
                        onTap: () => launchURL(context, 'https://play.google.com/store/apps/details?id=com.foxdebug.acodefree'),
                        child: Text('Acode',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue.shade400,
                            )),
                      ),
                    ])),
                Container(
                padding: const EdgeInsets.fromLTRB(8, 26, 8, 26),
                child: Image.network('https://images.unsplash.com/photo-1592609931095-54a2168ae893?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29kZSUyMGVkaXRvcnxlbnwwfHwwfHw%3D&w=1000&q=80')),
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 36),
                  child: const Text(
                    'All we need is that you are passionate to learning to code and our request is that don\'t leave this course before completing it so you can learn to make awesome websites :)',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
