import 'package:flutter/cupertino.dart';

import '../model/item.dart';

List<Item> itemList = [
  Item(
      name: "Apple",
      image: "assets/fruits/apple.png",
      price: 179,
      category: ["Fruit"],
      quantity: "Kg"),
  Item(
      name: "Banana",
      image: "assets/fruits/banana.png",
      price: 60,
      quantity: "Kg",
      category: ["Fruit"]),
  Item(
      name: "Dragon Fruit",
      image: "assets/fruits/dragon_fruit.png",
      price: 250,
      quantity: "Kg",
      category: ["Fruit", "Exotic"]),
  Item(
      name: "Grapes(around 500g)",
      image: "assets/fruits/grapes.png",
      price: 350,
      quantity: "Box",
      category: ["Fruits"]),
  Item(
      name: "Kiwi",
      image: "assets/fruits/kiwi.png",
      price: 150,
      quantity: "Box",
      category: ["Fruit", "Exotic"]),
  Item(
      name: "Orange",
      image: "assets/fruits/orange.png",
      price: 130,
      quantity: "Kg",
      category: ["Fruit"]),
  Item(
      name: "Pineapple",
      image: "assets/fruits/pineapple.png",
      price: 90,
      quantity: "Nos",
      category: ["Fruit"]),
  Item(
      name: "Strawberry",
      image: "assets/fruits/strawberry.png",
      price: 170,
      quantity: "Box",
      category: ["Fruit", "Exotic"]),
  Item(
      name: "Watermelon",
      image: "assets/fruits/watermelon.png",
      price: 90,
      quantity: "Nos",
      category: ["Fruit"]),
  Item(
      name: "Banana Raw",
      image: "assets/vegetable/banana_raw.png",
      price: 40,
      quantity: "Box",
      category: ["Vegetable"]),
  Item(
      name: "Beetroot",
      image: "assets/vegetable/beetroot.png",
      price: 90,
      quantity: "Kg",
      category: ["Vegetable"]),
  Item(
      name: "Cabbage",
      image: "assets/vegetable/cabbage.png",
      price: 30,
      quantity: "Nos",
      category: ["Vegetable"]),
  Item(
      name: "Carrot",
      image: "assets/vegetable/carrot.png",
      price: 70,
      quantity: "Kg",
      category: ["Vegetable"]),
  Item(
      name: "Coconut",
      image: "assets/vegetable/coconut.png",
      price: 35,
      quantity: "Nos",
      category: ["Vegetable"]),
  Item(
      name: "Coriander Leaves",
      image: "assets/vegetable/coriander_leaves.png",
      price: 20,
      quantity: "Box",
      category: ["Vegetable"]),
  Item(
      name: "Garlic(around 200g)",
      image: "assets/vegetable/garlic.png",
      price: 90,
      quantity: "Box",
      category: ["Vegetable"]),
  Item(
      name: "Ginger(around 200g)",
      image: "assets/vegetable/ginger.png",
      price: 40,
      quantity: "Box",
      category: ["Vegetable"]),
  Item(
      name: "Mint Leaves",
      image: "assets/vegetable/mint_leaves.png",
      price: 20,
      quantity: "Box",
      category: ["Vegetable"]),
  Item(
      name: "Onion",
      image: "assets/vegetable/onion.png",
      price: 55,
      quantity: "Kg",
      category: ["Vegetable"]),
  Item(
      name: "Tomato(around 500g)",
      image: "assets/vegetable/tomato.png",
      price: 30,
      quantity: "Box",
      category: ["Vegetable"])
];

class ItemProvider extends ChangeNotifier {
  final List<Item> _item = itemList;

  List<Item> get item => _item;
}
