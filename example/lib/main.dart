import 'package:cn_datetime_utils/cn_datetime_utils.dart';
import 'package:flutter/material.dart';

void main() {
  // 09:50:56:125:744 10/04/2023
  final now = DateTime.now();

  // New unit "quarter"
  final quarter = now.quarter; // 2

  // Number of days in month, quarter and year
  final daysOfMonth = now.daysOfMonth; // 30

  // Start and end of each unit
  final startOfMonth = now.startOfMonth; // 00:00:00:000:000 01/04/2023
  final endOfMonth = now.endOfMonth; // 23:59:59:999:999 30/04/2023

  // Initialize duration faster
  final duration = 30.second; // 30 seconds
  final duration2 = 4.6.second; // 4 seconds and 600 millisecond

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
