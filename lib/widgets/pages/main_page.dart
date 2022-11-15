// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tap_review/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
          backgroundColor: Color(0xFFd52b1c),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Fries.jpeg', height: 300, width: 300),
              SizedBox(
                height: 5,
              ),
              Text('Welcome to',
                  style: (TextStyle(color: Colors.black, fontSize: 20))),
              SizedBox(
                height: 5,
              ),
              Text('TapReview',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0)),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: Text('Review'),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.reviewPage);
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xD9d52b1c),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 25)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text('Order'),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.menuPage);
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xD9d52b1c),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ));
  }
}
