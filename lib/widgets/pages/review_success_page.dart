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
      appBar: AppBar(title: Text('Review Success Page'), backgroundColor: Color(0xFFd52b1c),),
    );
  }
}
