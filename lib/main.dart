import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Lomu"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Container(
            width: 50,
            height: 100,
            color: Colors.amber.shade700,
          ),
          Container(
            width: 50,
            height: 100,
            color: Colors.amber.shade600,
          ),
          Container(
            width: 50,
            height: 100,
            color: Colors.amber.shade500,
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.amber.shade400,
          )
        ],
      )
    );
  }
}
