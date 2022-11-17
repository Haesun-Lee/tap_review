// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tap_review/utils/menu.dart';

import '../../routes/routes.dart';

class MenuDetailPage extends StatefulWidget {
  //const MenuDetailPage({super.key});
  final Menu menu;
  MenuDetailPage(this.menu);

  @override
  State<MenuDetailPage> createState() => _MenuDetailPageState();
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.menu.menu_name),
            backgroundColor: Color(0xFFd52b1c),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                iconSize: 30,
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.menuOrderPage);
                },
              ),
            ]),
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.menu.imageUrl,
                  fit: BoxFit.fill,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RatingBarIndicator(
                      rating: widget.menu.rating,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 25.0,
                      direction: Axis.horizontal,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description : \n' + widget.menu.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 62, 62, 62)),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Row(
                  children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      FloatingActionButton.small(
                        onPressed: _decrementCounter,
                        tooltip: 'Decrement',
                        child: Icon(Icons.remove),
                        backgroundColor: Color(0xD9d52b1c),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton.small(
                        onPressed: _incrementCounter,
                        tooltip: 'Increment',
                        child: Icon(Icons.add),
                        backgroundColor: Color(0xD9d52b1c),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(RouteManager.menuPage);
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 40),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Color(0xD9d52b1c),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 17, 
                            fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                    ]),
              ],
            )));
  }
}
