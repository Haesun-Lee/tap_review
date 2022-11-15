// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ReviewSuccessPage extends StatefulWidget {
  const ReviewSuccessPage({super.key});

  @override
  State<ReviewSuccessPage> createState() => _ReviewSuccessPageState();
}

class _ReviewSuccessPageState extends State<ReviewSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Review Success Page'), 
        backgroundColor: Color(0xFFd52b1c),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset('assets/thumbs-up.jpeg'),
              SizedBox(
                height: 20,
              ),
              Text('Thanks for', style: TextStyle(color: Colors.black, fontSize:30, fontWeight:FontWeight.bold, letterSpacing: 1.0)),
              SizedBox(
                height: 10,
              ),
              Text('submitting a review', style: TextStyle(color: Colors.black, fontSize:30, fontWeight:FontWeight.bold, letterSpacing: 1.0))
            ]
          )
        )
    );
  }
}
