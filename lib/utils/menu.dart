import 'dart:ffi';

import 'package:flutter/material.dart';

class Menu {
  String menu_name;
  String description;
  String imageUrl;
  int rating;

  Menu(
      {required this.menu_name,
      required this.description,
      required this.imageUrl,
      required this.rating});
}

List<Menu> MenuList = [
  Menu(
      menu_name: 'Fries',
      description: 'This is very delicious fries made by Haesun',
      imageUrl: 'assets/Fries.jpeg',
      rating: 3),
  Menu(
      menu_name: 'Pasta',
      description: 'This is a Homemade pasta made by GT turtle',
      imageUrl: 'assets/Pasta.jpeg',
      rating: 5),
  Menu(
      menu_name: 'Salad',
      description: 'This is a Salad that I had back in Korea',
      imageUrl: 'assets/Salad.jpeg',
      rating: 4),
];
