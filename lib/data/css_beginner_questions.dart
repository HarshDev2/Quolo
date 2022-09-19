import 'package:quolo/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Q.1 CSS was invented by -",
    {
      "Tim Berners-Lee": false,
      "Steve Jobs": false,
      "Håkon Wium Lie": true,
      "Vint Cerf": false,
    },
  ),
  QuestionModel("Q.2 What is CSS full name?", {
    "Cascading Style Sheets": true,
    "Custom Sheeting Style": false,
    "Colorful Style Sheets": false,
    "Customizable Style Sheets": false,
  }),
  QuestionModel("Q.3 When was CSS released?", {
    "1993": true,
    "1996": false,
    "1994": false,
    "1997": false,
  }),
  QuestionModel("Q.4 Which property changes text color?", {
    "background-color": false,
    "style-color": false,
    "color": true,
    "font-color": false,
  }),
  QuestionModel("Q.5 Which is not an CSS property?", {
    "color": false,
    "style": true,
    "font-size": false,
    "width": false,
  }),
  QuestionModel("Q.6 Which color format can be used in CSS?", {
    "HSL": false,
    "RGB": false,
    "RGBA": false,
    "All of these": true,
  }),
  QuestionModel(
      "Q.7 At which place CSS should external file should be included in HTML?",
      {
        "head": true,
        "body": false,
        "footer": false,
        "None of these": false,
      }),
  QuestionModel("Q.8 What is correct CSS Syntax?", {
    "{body: color: black}": false,
    "body { color: black; }": true,
    "body { color = black }": false,
  }),
  QuestionModel("Q.9 Which property changes background-color?", {
    "background-color": true,
    "bg-color": false,
    "color": false,
    "color-background": false,
  }),
  QuestionModel("Q.10 Which is correct insertion of comments in CSS?", {
    "<!-- Comment -->": false,
    "/* Comment */": true,
    "// Comment": false,
    "\"\"\" Comment \"\"\"": false,
  }),
];
