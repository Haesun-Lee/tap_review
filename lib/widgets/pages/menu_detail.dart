// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tap_review/utils/menu.dart';

import '../../routes/routes.dart';

class MenuDetailPage extends StatelessWidget {
  //const MenuDetailPage({super.key});
  final Menu menu;
  MenuDetailPage(this.menu);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(menu.menu_name),
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
                  menu.imageUrl,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Rating : ' + menu.rating.toString(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description : \n' + menu.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 170,
                ),
                Row(children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(RouteManager.menuPage);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Color(0xD9d52b1c),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 25)),
                  ),
                ]),
              ],
            )));
  }
}
