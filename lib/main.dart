import 'package:flutter/material.dart';
import 'package:myfixapp/Screens/Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SingInApp(),
  ));
}

class SingInApp extends StatelessWidget {
  const SingInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
