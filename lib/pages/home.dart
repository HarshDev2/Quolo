import 'package:flutter/material.dart';
import 'package:quolo/learning_materials/content/course_overview.dart';
import 'package:quolo/learning_materials/content/course_prerequisite.dart';
import 'package:quolo/learning_materials/html/html_attributes.dart';
import 'package:quolo/learning_materials/html/html_comments.dart';
import 'package:quolo/learning_materials/html/html_elements.dart';
import 'package:quolo/learning_materials/html/html_images.dart';
import 'package:quolo/learning_materials/html/html_introduction.dart';
import 'package:quolo/learning_materials/html/html_paragraph.dart';
import 'package:quolo/learning_materials/html/html_structure.dart';
import 'package:quolo/learning_materials/html/html_text_formats.dart';

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
          ),
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                  child: const Text(
                    'Web Development',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )),
              ExpansionTile(title: const Text('Course Overview'), children: [
                ListTile(
                    title: const Text('Overview'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CourseOverviewPage()));
                    }),
                ListTile(
                    title: const Text('Prerequisites of this course'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CoursePrerequisitesPage()));
                    }),
              ]),
              ExpansionTile(
                title: const Text('Introduction to HTML'),
                children: [
                  ListTile(
                      title: const Text('What is HTML?'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HtmlIntroductionPage()));
                      }),
                  ListTile(
                      title: const Text('Structure of HTML'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HtmlStructurePage()));
                      }),
                  ListTile(
                      title: const Text('HTML Elements'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HtmlElementsPage()));
                      }),
                  ListTile(
                      title: const Text('Paragraph in HTML'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HtmlParagraphPage()));
                      }),
                ],
              ),
              ExpansionTile(
                title: const Text('Basics of HTML'),
                children: [
                  ListTile(
                    title: const Text('Comments'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HtmlCommentsPage()));
                    },
                  ),
                  ListTile(
                    title: const Text('Attributes'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HtmlAttributesPage()));
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('Elements of HTML'),
                children: [
                  ListTile(
                    title: const Text('Text Formats'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HtmlTextFormatsPage()));
                    },
                  ),
                  ListTile(
                      title: const Text('Images'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HtmlImagesPage()));
                      }),
                  ListTile(
                    title: const Text('Hyper Links'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Lists'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Unordered List'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Tables'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('User Inputs'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Exercise'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('Styling with CSS'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('Styling with CSS'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('Intoduction to JavaScript'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('Basics of JavaScript'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('Advanced JavaScript'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('Loops in JavaScript'),
                children: [
                  ListTile(
                    title: const Text('oming Soon'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('DOM Manupulation'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text('More About This'),
                children: [
                  ListTile(
                    title: const Text('Coming Soon'),
                    onTap: () {},
                  ),
                ],
              )
            ],
          )),
        ));
  }
}
