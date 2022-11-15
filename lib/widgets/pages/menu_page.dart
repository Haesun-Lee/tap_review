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
      appBar: AppBar(title: Text('Menu Page')),
      body: ListView.builder(
        itemCount: MenuList.length,
        itemBuilder: (context, index) {
          Menu menu = MenuList[index];
          return Card(
            child: ListTile(
              title: Text(menu.menu_name),
              subtitle: Text(menu.rating.toString()),
              leading: Image.asset(menu.imageUrl),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenuDetailPage(menu)));
              },
            ),
          );
        },
      ),
    );
  }
}
