// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
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
                title: Text(
                  menu.menu_name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(menu.rating.toString()),
                leading: Image.asset(
                  menu.imageUrl,
                  width: 70,
                ),
                trailing: Text(
                  menu.price.toString(),
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
