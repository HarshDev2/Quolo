import '/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Q.1 HTML was invented by -",
    {
      "Håkon Wium Lie": false,
      "Tim Berners-Lee": true,
      "Leonard Kleinrock": false,
      "Vint Cerf": false,
    },
  ),
  QuestionModel("Q.2 When was HTML first version released?", {
    "1989": false,
    "1991": false,
    "1996": false,
    "1993": true,
  }),
  QuestionModel("Q.3 What is HTML full name?", {
    "Hyper Markup Language": false,
    "HyperText Markup Language": true,
    "HyperLinks Markup Language": false,
    "HomeTools Markup Language": false,
  }),
  QuestionModel("Q.4 Which one of these displays a paragraph?", {
    "<paragraph>": false,
    "<para>": false,
    "<p>": true,
    "<text>": false,
  }),
  QuestionModel("Q.5 Which of these displays text?", {
    "<p>": false,
    "<h3>": false,
    "<u>": false,
    "All of these": true,
  }),
  QuestionModel("Q.6 Which is largest heading on HTML?", {
    "<h2>": false,
    "<4>": false,
    "<h1>": true,
    "<h8>": false,
  }),
  QuestionModel("Q.7 Choose the incorrect element below.", {
    "<img>": false,
    "<section>": false,
    "<div": false,
    "<block>": true,
  }),
  QuestionModel("Q.8 In which element web page visually seen content is putted?", {
    "<head>": false,
    "<body>": true,
    "<div>": false,
    "<meta>": false,
  }),
  QuestionModel("Q.9 Which of these are container elements?", {
    "<div>": false,
    "<section>": false,
    "first and second": true,
    "<head>": false,
  }),
  QuestionModel(
      "Q.10 Which element is used to define footer in HTML?", {
    "<footer>": true,
    "<foot>": false,
    "<last>": false,
    "<end>": false,
  }),
];
