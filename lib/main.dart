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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var i = 0; i < 50; i++)
              Container(
                height: 100,
                margin: const EdgeInsets.all(12),
                color: Colors.amber,
                child: Center(child: Text('Item $i')),
              ),
          ],
        ),
      ),
    );
  }
}
