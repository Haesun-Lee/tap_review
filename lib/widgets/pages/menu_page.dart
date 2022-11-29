// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tap_review/utils/menu.dart';
import 'package:tap_review/widgets/pages/menu_detail.dart';
import 'package:tap_review/utils/review.dart';
import '../../routes/routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final Stream<QuerySnapshot> menuList =
      FirebaseFirestore.instance.collection('menu').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Menu Page'),
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
        body: StreamBuilder<QuerySnapshot>(
          stream: menuList,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data['menu_name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RatingBarIndicator(
                      rating: data['rating'],
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                  leading: Image.network(
                    data['imageUrl'],
                    width: 70,
                  ),
                  isThreeLine: true,
                  trailing: Text(
                    //'\$' +
                    data['price'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.redAccent),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuDetailPage(
                                  data['menu_number'],
                                  data['menu_name'],
                                  data['description'],
                                  data['imageUrl'],
                                  data['rating'],
                                  data['price'],
                                )));
                  },
                );
              }).toList(),
            );
          },
        ));
  }
}
