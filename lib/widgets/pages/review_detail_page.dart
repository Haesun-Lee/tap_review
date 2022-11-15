// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tap_review/utils/menu.dart';

import '../../utils/review.dart';

class ReviewDetailPage extends StatelessWidget {
  //const MenuDetailPage({super.key});
  final Review review;
  ReviewDetailPage(this.review);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(review.menu_name)),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  review.imageUrl,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'comment : ',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Description : \n' + review.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15.0),
                  ),
                )
              ],
            )));
  }
}
