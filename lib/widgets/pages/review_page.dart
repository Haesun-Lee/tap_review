// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tap_review/utils/review.dart';
import 'package:tap_review/widgets/pages/menu_detail.dart';
import 'package:tap_review/widgets/pages/review_detail_page.dart';

import '../../routes/routes.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Page'),
        backgroundColor: Color(0xFFd52b1c),
      ),
      body: ListView.builder(
        itemCount: reviewList.length,
        itemBuilder: (context, index) {
          Review review = reviewList[index];
          return Card(
            child: ListTile(
              title: Text(
                review.menu_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(review.description),
              leading: Image.asset(review.imageUrl),
              onTap: () {
                _bottomSheet(context);
              },
            ),
          );
        },
      ),
    );
  }
}

_bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext c) {
        return Wrap(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Review',
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
                      'Rating',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    title: Text('title'),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Text('leaing'),
                    title: Text('title'),
                  ),
                ],
              ),
            ),
          ],
        );
      });
}
