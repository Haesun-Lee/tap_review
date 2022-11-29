import 'dart:ffi';

import 'package:flutter/material.dart';

class ReviewContent {
  String menu_name;
  String description;
  int rate;

  ReviewContent(
      {required this.menu_name, required this.description, required this.rate});
}

List<ReviewContent> reviewContentList = [
  ReviewContent(
    menu_name: 'Squid Fries',
    description: 'Served with mushroom gravy, cranberry & mint sauces',
    rate: 3,
  ),
];
