import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TapReview',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'TapReview'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Main Page'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 30, color: Colors.white),
        toolbarHeight: 80,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250,150),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 40)
              ),
              child: const Text('Review'),
              ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250,150),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 40)
              ),
              child: const Text('Order'),
              ),
          ],
        ),
      ),
    );
  }
}


