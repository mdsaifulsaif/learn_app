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
       
       
      home: MyHomePage()


    );
  }
}


class MyHomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text("Lomu"),
      centerTitle: true,
      ),
      body: 
        Container(
          margin: EdgeInsets.all(10),
          height: 200,
          width: 300,
          color: Colors.amber,
          child: Center(child: Text("Div", style: TextStyle(fontSize: 20),),),
        )
 
    );
  }
}