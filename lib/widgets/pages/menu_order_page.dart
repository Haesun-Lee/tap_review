// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class MenuOrderPage extends StatefulWidget {
  const MenuOrderPage({super.key});

  @override
  State<MenuOrderPage> createState() => _MenuOrderPageState();
}

class _MenuOrderPageState extends State<MenuOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Order Page'), backgroundColor: Color(0xFFd52b1c),),
    );
  }
}
