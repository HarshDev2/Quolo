import 'package:flutter/material.dart';
import 'package:quolo/utils/themes.dart';
import '../data/html_beginner_questions.dart';
import 'html_result_page.dart';

class HtmlBeginnerTest extends StatefulWidget {
  const HtmlBeginnerTest({Key? key}) : super(key: key);

  @override
  _HtmlBeginnerTestState createState() => _HtmlBeginnerTestState();
}

class _HtmlBeginnerTestState extends State<HtmlBeginnerTest> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme(context),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,),
            splashRadius: 26,
            
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('HTML QUIZ'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: PageView.builder(
              controller: _controller!,
              onPageChanged: (page) {
                if (page == questions.length - 1) {
                  setState(() {
                    btnText = "See Results";
                  });
                }
                setState(() {
                  answered = false;
                });
              },
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("${questions[index].question}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                          )),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Container(
                        width: double.infinity,
                        height: 52.0,
                        margin: const EdgeInsets.only(
                            bottom: 20.0, left: 12.0, right: 12.0),
                            
                        child: RawMaterialButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: btnPressed
                              ? questions[index].answers!.values.toList()[i]
                                  ? Color.fromARGB(255, 67, 194, 73)
                                  : Color.fromARGB(255, 255, 75, 75)
                              : Colors.grey.shade300,
                          onPressed: !answered
                              ? () {
                                  if (questions[index]
                                      .answers!
                                      .values
                                      .toList()[i]) {
                                    score++;
                                  } else {}
                                  setState(() {
                                    btnPressed = true;
                                    answered = true;
                                  });
                                }
                              : null,
                          child:
                              Text(questions[index].answers!.keys.toList()[i],
                              textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                  )),
                        ),
                      ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    InkWell(
                        highlightColor: Colors.transparent,
                        onTap: () {
                          if (_controller!.page?.toInt() ==
                              questions.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultScreen(score)));
                          } else {
                            _controller!.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeInExpo);

                            setState(() {
                              btnPressed = false;
                            });
                          }
                        },
                        child: Ink(
                          padding: const EdgeInsets.all(14.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.lightBlue.shade300),
                          width: 180,
                          child: Text(
                            btnText,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                );
              },
              itemCount: questions.length,
            )),
      ),
    );
  }
}
