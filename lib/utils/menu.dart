import 'dart:ffi';

import 'package:flutter/material.dart';

class Menu {
  String menu_name;
  String description;
  String imageUrl;
  int price;
  double rating;

  Menu(
      {required this.menu_name,
      required this.description,
      required this.imageUrl,
      required this.price,
      required this.rating});
}

List<Menu> MenuList = [
  Menu(
      menu_name: 'Squid Fries',
      description: 'This is very delicious fries made by Haesun',
      imageUrl: 'assets/Fries.jpeg',
      price: 8,
      rating: 3.0),
  Menu(
      menu_name: 'Pasta',
      description: 'This is a Homemade pasta made by GT turtle',
      imageUrl: 'assets/Pasta.jpeg',
      price: 15,
      rating: 5.0),
  Menu(
      menu_name: 'Salad',
      description: 'This is a Salad that I had back in Korea',
      imageUrl: 'assets/Salad.jpeg',
      price: 12,
      rating: 4.2),
  Menu(
      menu_name: 'Steamed Beef',
      description:
          'This is very delicious Pyon Baek steam(shabu-shabu) made by Daeun',
      imageUrl: 'assets/Steamed.jpeg',
      price: 25,
      rating: 4.1),
  Menu(
      menu_name: 'Oil Pasta',
      description: 'This is a Homemade oil pasta made by Kahye',
      imageUrl: 'assets/Oil_Pasta.jpeg',
      price: 11,
      rating: 3.2),
  Menu(
      menu_name: 'Sweet Potato Fries',
      description: 'This is a Sweet potato fries by Dink Tea',
      imageUrl: 'assets/SweetPotato.jpeg',
      price: 9,
      rating: 1.0),
  Menu(
      menu_name: 'Lamb Skewer',
      description: 'This is a very delicious lamb skewers by Kochi Maru',
      imageUrl: 'assets/Lamb.jpeg',
      price: 20,
      rating: 4.6),
  Menu(
      menu_name: 'Tteokbokki',
      description: 'This is a K-Tteokbokki that I had in Korea',
      imageUrl: 'assets/Tteokbokki.jpeg',
      price: 12,
      rating: 4.4),
  Menu(
      menu_name: 'Bacon Wrapped Pinapple',
      description: 'This is pinapple wrapped with bacon.',
      imageUrl: 'assets/Salad.jpeg',
      price: 9,
      rating: 3.8),
];
