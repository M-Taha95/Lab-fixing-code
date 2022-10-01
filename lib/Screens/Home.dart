import 'package:flutter/material.dart';
import 'package:myfixapp/Models/Quez.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2014/03/25/22/53/smoke-298243_1280.jpg"))),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 200,
              child: Text(
                "Do you think that, are good with Quezes ?",
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontFamily: "Pacifico",
                    fontSize: 20),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Center(
                              child: Column(children: [
                                ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Quez();
                                        },
                                      ));
                                    },
                                    icon: Icon(Icons.skip_next),
                                    label: Text("Go to Quez Page"))
                              ]),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Yes",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Pacifico",
                          fontSize: 20),
                    ),
                    color: Colors.grey.shade800,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  FlatButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Center(
                              child: Column(children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Home();
                                        },
                                      ));
                                    },
                                    child: Text(
                                      "Sorry to here that <_>",
                                    ))
                              ]),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "No",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Pacifico",
                          fontSize: 20),
                    ),
                    color: Colors.grey.shade800,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
