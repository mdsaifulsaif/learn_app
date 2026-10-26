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
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        children: [
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text("hello")),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text("hello")),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text("hello")),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text("hello")),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Center(child: Text("hello")),
          ),
        ],
      ),
    );
  }
}
