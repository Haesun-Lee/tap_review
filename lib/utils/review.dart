//import 'dart:ffi';

import 'package:flutter/material.dart';

class Review {
  String menu_name;
  String description;
  String imageUrl;

  Review(
      {required this.menu_name,
      required this.description,
      required this.imageUrl});
}

List<Review> reviewList = [
  Review(
      menu_name: 'Salad',
      description: 'This is a Salad that I had back in Korea',
      imageUrl: 'assets/Salad.jpeg'),
  Review(
      menu_name: 'Sweet Potato Fries',
      description: 'This is a Sweet potato fries by Dink Tea',
      imageUrl: 'assets/SweetPotato.jpeg'),
  Review(
      menu_name: 'Lamb Skewer',
      description: 'This is a very delicious lamb skewers by Kochi Maru',
      imageUrl: 'assets/Lamb.jpeg'),
  Review(
      menu_name: 'Tteokbokki',
      description: 'This is a K-Tteokbokki that I had in Korea',
      imageUrl: 'assets/Tteokbokki.jpeg'),
];
