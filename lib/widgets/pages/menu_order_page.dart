// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tap_review/widgets/pages/order_success_page.dart';

class MenuOrderPage extends StatefulWidget {
  const MenuOrderPage({super.key});

  @override
  State<MenuOrderPage> createState() => _MenuOrderPageState();
}

class _MenuOrderPageState extends State<MenuOrderPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(_counter > 0 )
        _counter--;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Shopping Cart'), 
        backgroundColor: Color(0xFFd52b1c),
      ),
      body: 
        ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index){
          return Card(
            elevation: 5.0,
            child: 
              Padding(
                padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Bacon.jpeg', 
                    height: 80, 
                    width: 80
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  SizedBox(
                    width:130,
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Bacon something',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '\$7',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width:30,
                        height:30,
                        child: FloatingActionButton.small(
                        onPressed: _decrementCounter,
                        tooltip: 'Decrement',
                        child: Icon(Icons.remove),
                        backgroundColor: Color(0xD9d52b1c),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width:30,
                        height:30,
                        child: FloatingActionButton.small(
                        onPressed: _incrementCounter,
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                        backgroundColor: Color(0xD9d52b1c),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        iconSize: 25,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ],
              ),
              ),
          );
        }
        ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderSuccessPage()));
        },
        child: Container(
          color: Color(0xD9d52b1c),
          alignment: Alignment.center,
          height: 50,
          child: Text(
            'Proceed to Checkout',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        )
      ),
    );
  }
}
