import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  Questions({
    required this.ques_text,
    required this.ques_answer1,
    required this.ques_answer2,
    required this.ques_answer3,
    required this.ques_answer4,
  });

  String? ques_text;
  String? ques_answer1;
  String? ques_answer2;
  String? ques_answer3;
  String? ques_answer4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/01/27/01/02/texture-2012078_1280.jpg"))),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 250,
                  child: Text(
                    "$ques_text",
                    style: TextStyle(
                        color: Colors.grey.shade300,
                        fontFamily: "Pacifico",
                        fontSize: 30),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 2, 46, 82),
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Congratulatios, your answer is correct ...",
                              style: TextStyle(
                                  fontFamily: "Pacifico",
                                  color: Color.fromARGB(255, 229, 23, 8)),
                            ),
                            content: Icon(Icons.sentiment_very_satisfied),
                          );
                        },
                      );
                    },
                    child: Text(
                      "$ques_answer1",
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Sorry, Incorrect answer...",
                              style: TextStyle(
                                  fontFamily: "Pacifico",
                                  color: Color.fromARGB(255, 229, 23, 8)),
                            ),
                            content: Icon(Icons.sentiment_dissatisfied),
                          );
                        },
                      );
                    },
                    child: Text(
                      "$ques_answer2",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Sorry, Incorrect answer...",
                              style: TextStyle(
                                  fontFamily: "Pacifico",
                                  color: Color.fromARGB(255, 229, 23, 8)),
                            ),
                            content: Icon(Icons.sentiment_dissatisfied),
                          );
                        },
                      );
                    },
                    child: Text(
                      "$ques_answer3",
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Sorry, Incorrect answer...",
                              style: TextStyle(
                                  fontFamily: "Pacifico",
                                  color: Color.fromARGB(255, 229, 23, 8)),
                            ),
                            content: Icon(Icons.sentiment_dissatisfied),
                          );
                        },
                      );
                    },
                    child: Text(
                      "$ques_answer4",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
