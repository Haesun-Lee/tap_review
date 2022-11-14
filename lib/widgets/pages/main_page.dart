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
          backgroundColor: Color(0xFF525288),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Review'),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.reviewPage);
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFF525288),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 25)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Order'),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.menuPage);
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFF525288),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ));
  }
}
