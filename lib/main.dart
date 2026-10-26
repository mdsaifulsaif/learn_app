import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
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
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.teal,
        title: const Text("Lomu"),
        centerTitle: true,

        actions: [
           Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child:  Icon(Icons.notifications),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
           child: Icon(Icons.settings),
          ),
          
         
        ],
      ),






      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
       
          return Container(
            height: 100,
            color: Colors.green,

            child: Center(child: Image.asset("images/b.jpeg")),
          );
        },
      ),
    );
  }
}
