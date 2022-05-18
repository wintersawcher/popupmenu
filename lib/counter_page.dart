import 'package:flutter/material.dart';
import 'package:popupmenu/Count.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication"),

      ),
      body: Center(
        child: Count(
          count: count,
          onCountChange: (int val) => setState(() => count +=val),
          onCountSelected: ()=>print("Selected"),
        ),
      ),
    );
  }
}
