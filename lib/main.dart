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
  const MyHomePage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // ২. যেহেতু ২টি ট্যাব তাই length: 2 দিতে হবে
      initialIndex: 0, // কোন ট্যাবটি প্রথমে দেখাবে (0 বা 1)
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          backgroundColor: Colors.teal,
          title: const Text("Lomu"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.settings),
            ),
          ],
          elevation: 10,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Left Tab", icon: Icon(Icons.cloud_outlined)),
              Tab(text: 'Right Tab', icon: Icon(Icons.star)), 
            ],
          ),
        ),
        
        body: const TabBarView(
          children: [
            
            Center(
              child: Text(
                "This is Left Tab Body",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          
            Center(
              child: Text(
                "This is Right Tab Body",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
