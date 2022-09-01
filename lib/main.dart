import 'package:flutter/material.dart';
import 'package:renaultest/page_formulaire.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Renault  Test',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(0, 255, 183, 0),
      ),
      home: const Formulaire(),
    );
  }
}
