// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tap_review/widgets/pages/order_success_page.dart';

class MenuOrderPage extends StatefulWidget {
  const MenuOrderPage({super.key});

  @override
  State<MenuOrderPage> createState() => _MenuOrderPageState();
}

String myID = '';
List<String> reviewID = [];
Future getReviewID() async {
  await FirebaseFirestore.instance.collection('cart').get().then(
        (snapshot) => snapshot.docs.forEach((document) {
          myID = document.id.toString();
          reviewID.add(document.reference.id);
        }),
      );
}

countDocuments() async {
  QuerySnapshot _myDoc =
      await FirebaseFirestore.instance.collection('cart').get();
  List<DocumentSnapshot> _myDocCount = _myDoc.docs;
  return _myDocCount.length; // Count of Documents in Collection
}

class _MenuOrderPageState extends State<MenuOrderPage> {
  int _counter = 0;
  final Stream<QuerySnapshot> cartList =
      FirebaseFirestore.instance.collection('cart').snapshots();

  List<int> counter = [];

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
        title: Text('Order Page'),
        backgroundColor: Color(0xFFd52b1c),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: cartList,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
              getReviewID();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(data['name']),
                  subtitle: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
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
                        data['count'].toString(),
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold, color: ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
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
                        onPressed: () {
                          print("deleting");
                          print(myID);
                          FirebaseFirestore.instance
                              .collection('cart')
                              .doc(myID)
                              .delete();
                        },
                      ),
                    ],
                  ),
                  leading: Image.network(
                    data['imageUrl'],
                    width: 60,
                  ),
                  onTap: () {},
                ),
              );
            }).toList(),
          );
        },
      ),
      bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderSuccessPage()));
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
                  color: Colors.white),
            ),
          )),
    );
  }
}
