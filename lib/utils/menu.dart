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
      menu_name: 'Squid Fries',
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
  Menu(
      menu_name: 'Steamed Beef',
      description:
          'This is very delicious Pyon Baek steam(shabu-shabu) made by Daeun',
      imageUrl: 'assets/Steamed.jpeg',
      rating: 4),
  Menu(
      menu_name: 'Oil Pasta',
      description: 'This is a Homemade oil pasta made by Kahye',
      imageUrl: 'assets/Oil_Pasta.jpeg',
      rating: 3),
  Menu(
      menu_name: 'Sweet Potato Fries',
      description: 'This is a Sweet potato fries by Dink Tea',
      imageUrl: 'assets/SweetPotato.jpeg',
      rating: 1),
  Menu(
      menu_name: 'Lamb Skewer',
      description: 'This is a very delicious lamb skewers by Kochi Maru',
      imageUrl: 'assets/Lamb.jpeg',
      rating: 5),
  Menu(
      menu_name: 'Tteokbokki',
      description: 'This is a K-Tteokbokki that I had in Korea',
      imageUrl: 'assets/Tteokbokki.jpeg',
      rating: 5),
  Menu(
      menu_name: 'Bacon Wrapped Pinapple',
      description: 'This is pinapple wrapped with bacon.',
      imageUrl: 'assets/Salad.jpeg',
      rating: 4),
];
