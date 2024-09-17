import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var ui = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.purple,
      ),
      title: "Aming Testing",
      home: Counter(),
    );

    return ui;
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TITLE'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Count : $count",
            style: TextStyle(fontSize: 50),
          ),
          Text("Please Click Add")
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count += 1;
          setState(() {
            
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
