import 'package:flutter/material.dart';
import 'package:myfixapp/Components/Questions.dart';

class Quez extends StatefulWidget {
  const Quez({super.key});

  @override
  State<Quez> createState() => _HomeState();
}

class _HomeState extends State<Quez> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Icon(Icons.quiz_rounded),
            Icon(Icons.quiz_rounded),
            Icon(Icons.quiz_rounded),
            Icon(Icons.quiz_rounded),
            Icon(Icons.quiz_rounded),
            Icon(Icons.quiz_rounded),
          ]),
          title: Row(
            children: [Text("Quezes App"), Icon(Icons.quiz_outlined)],
          ),
        ),
        body: TabBarView(children: [
          Questions(
              ques_text: "Which of these countries is NOT in Africa?",
              ques_answer1: "Jordan",
              ques_answer2: "South Africa",
              ques_answer3: "Egypet",
              ques_answer4: "Maroco"),
          Questions(
              ques_text: "What is the Sum of 12 And 10?",
              ques_answer1: "22",
              ques_answer2: "23",
              ques_answer3: "25",
              ques_answer4: "21"),
          Questions(
              ques_text: "أين يقع بئر زمزم؟",
              ques_answer1: "مكة المكرمة",
              ques_answer2: "الطائف ",
              ques_answer3: "الرياض ",
              ques_answer4: "المدينة المنورة"),
          Questions(
              ques_text: "ما هي عاصمة فلسطين؟",
              ques_answer1: "القدس ",
              ques_answer2: "غزة ",
              ques_answer3: "عمان ",
              ques_answer4: "مكة المكرمة"),
          Questions(
              ques_text: "Which Color does't belong to Jordan's Flag?",
              ques_answer1: "Orange",
              ques_answer2: "Black",
              ques_answer3: "Red ",
              ques_answer4: "White"),
          Questions(
              ques_text: "Which kind of cars companies located in Germany?",
              ques_answer1: "Mercedes-Benz ",
              ques_answer2: "Toyota ",
              ques_answer3: "Ford ",
              ques_answer4: "Range Rover")
        ]),
      ),
    );
  }
}
