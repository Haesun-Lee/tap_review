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
      appBar: AppBar(title: Text('Review Page')),
      body: ListView.builder(
        itemCount: reviewList.length,
        itemBuilder: (context, index) {
          Review review = reviewList[index];
          return Card(
            child: ListTile(
              title: Text(review.menu_name),
              subtitle: Text(review.description),
              leading: Image.asset(review.imageUrl),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReviewDetailPage(review)));
              },
            ),
          );
        },
      ),
    );
  }
}
