import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmer_fresh/controller/provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class PachakariFresh extends StatefulWidget {
  const PachakariFresh({super.key});

  @override
  State<PachakariFresh> createState() => _PachakariFreshState();
}

class _PachakariFreshState extends State<PachakariFresh> {
  var category = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
  ];
  var categoryImage = [
    "assets/carousel/specialoffer.png",
    "assets/carousel/vegetables.jpg",
    "assets/carousel/fruits.jpg",
    "assets/carousel/unusual-exotic-fruits.jpg",
  ];
  var carouselImage = [
    "assets/carousel/fruits.jpg",
    "assets/carousel/newyear.jpeg",
    "assets/carousel/vegetables.jpg",
  ];
  var icons = [
    "assets/icons/stopwatch.png",
    "assets/icons/phoneinhand.png",
    "assets/icons/farmer.png",
  ];
  var iconText = ["30 MINS POLICY", "TRACEABILITY", "LOCAL SOURCING"];

  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  @override
  Widget build(BuildContext context) {
    var items = context.watch<ItemProvider>().item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Pachakari Fresh",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                Text(
                  "Kochi",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 8),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: FaIcon(
                    Icons.search,
                    size: 40,
                    color: Colors.grey,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(category.length, (index) {
                  return InkWell(
                    onTap: () {},
                    splashColor: Colors.transparent,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.fromLTRB(10, 4, 10, 7),
                      decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          border: Border.all(color: Colors.green, width: .5),
                          borderRadius: BorderRadius.circular(15),
                          shape: BoxShape.rectangle),
                      child: Text(
                        category[index],
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: List.generate(3, (index) {
                return Container(
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(carouselImage[index]), fit: BoxFit.cover),
                  ),
                );
              }),
              options: CarouselOptions(
                  height: 200, viewportFraction: 1, initialPage: 1, autoPlay: true, reverse: true),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(border: Border.all(color: Colors.green, width: .5)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(icons.length, (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(height: 40, width: 40, image: AssetImage(icons[index])),
                        Text(iconText[index])
                      ],
                    );
                  })),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Shop By Category",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(category.length, (index) {
                return Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(categoryImage[index]), fit: BoxFit.contain)),
                        ),
                        Text(category[index])
                      ],
                    ),
                  ),
                );
              }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/carousel/farmers-1.jpg"), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                "Best Selling Products",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(items[random(0, itemList.length)].image),
                                  fit: BoxFit.contain)),
                        ),
                        Column(
                          children: [
                            Text(
                              items[index].name,
                              maxLines: 2,
                            ),
                            Text("₹${items[index].price}")
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.grey), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box, color: Colors.grey), label: "Home")
      ]),
    );
  }
}
