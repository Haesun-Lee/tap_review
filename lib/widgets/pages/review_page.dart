// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:tap_review/utils/DatabaseManager.dart';
import 'package:tap_review/utils/review.dart';
import 'package:tap_review/widgets/pages/menu_detail.dart';
import 'package:tap_review/widgets/pages/review_detail_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../routes/routes.dart';
import '../../utils/get_what_to_review.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final review = FirebaseFirestore.instance.collection('cart');

  final Stream<QuerySnapshot> reviewList =
      FirebaseFirestore.instance.collection('cart').snapshots();

  List<String> reviewID = [];

  Future getReviewID() async {
    await FirebaseFirestore.instance.collection('cart').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            reviewID.add(document.reference.id);
          }),
        );
  }

  // void initState() {
  //   getReviewID();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Review Page'),
          backgroundColor: Color(0xFFd52b1c),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: reviewList,
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
                  title: Text(data['name']),
                  subtitle: Text(data['description']),
                  leading: Image.network(data['imageUrl']),
                  onTap: () {
                    _bottomSheet(context, data['name'], getReviewID());
                  },
                );
              }).toList(),
            );
          },
        ));
  }
}

_bottomSheet(context, reviewName, reviewID) {
  CollectionReference reviews = FirebaseFirestore.instance.collection('review');
  final TextEditingController _TextController = TextEditingController();
  double sum = 0;
  // bool food = false;
  // bool service = false;
  // bool overall = false;

  showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return Wrap(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      reviewName,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Text(
                      'Taste                   ',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    title: RatingBar.builder(
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        sum += rating;
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Text(
                      'Portion                ',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    title: RatingBar.builder(
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        sum += rating;
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Text(
                      'Appearance        ',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    title: RatingBar.builder(
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                        sum += rating;
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Text(
                      'Speed of Service',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    title: RatingBar.builder(
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                        sum += rating;
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Text( 
                      'Overall                  ',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    title: RatingBar.builder(
                      itemSize: 25,
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        sum += rating;
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      controller: _TextController,
                      minLines: 2,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: 'Please leave your comments here',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        //print(_TextController.text);
                        await reviews.add({
                          'name': reviewName,
                          'rating': sum / 3,
                          'review': _TextController.text,
                        });
                        sum = 0;
                        Navigator.pop(context);
                      },
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Color(0xD9d52b1c),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      });
}
