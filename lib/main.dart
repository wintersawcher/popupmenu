import 'package:flutter/material.dart';
import 'package:popupmenu/Count.dart';
import 'package:popupmenu/counter_page.dart';
import 'package:popupmenu/mybottomshet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Mybottomshet(),
    );
  }
}


