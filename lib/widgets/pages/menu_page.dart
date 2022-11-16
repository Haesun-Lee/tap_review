// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tap_review/utils/menu.dart';
import 'package:tap_review/widgets/pages/menu_detail.dart';

import '../../routes/routes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
        backgroundColor: Color(0xFFd52b1c),
      ),
      body: ListView.builder(
        itemCount: MenuList.length,
        itemBuilder: (context, index) {
          Menu menu = MenuList[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    menu.menu_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBarIndicator(
                    rating: menu.rating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 15.0,
                    direction: Axis.horizontal,
                  ),
                ),
                leading: Image.asset(
                  menu.imageUrl,
                  width: 70,
                ),
                isThreeLine: true,
                trailing: Text(
                  '\$' + menu.price.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.redAccent),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MenuDetailPage(menu)));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
