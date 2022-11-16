// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class OrderSuccessPage extends StatefulWidget {
  const OrderSuccessPage({super.key});

  @override
  State<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends State<OrderSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Order Success Page'), backgroundColor: Color(0xFFd52b1c),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset('assets/check.jpeg', height:150, width: 150, color: Colors.white.withOpacity(0.9), colorBlendMode: BlendMode.modulate,),
              SizedBox(
                height: 20,
              ),
              Text(
                'Order submitted', 
                style: TextStyle(
                  color: Colors.black, 
                  fontSize:40, 
                  fontWeight:FontWeight.bold, 
                  letterSpacing: 1.0
                )
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Thanks for your purchase', 
                style: TextStyle(
                  color: Colors.black, 
                  fontSize:25, 
                  fontWeight:FontWeight.bold, 
                  letterSpacing: 1.0
                )
              ),
              SizedBox(
                height: 5,
              ),
            ]
          )
        )
    );
  }
}
