import 'package:farmer_fresh/controller/provider.dart';
import 'package:farmer_fresh/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ItemProvider>(
    create: (context)=>ItemProvider(),
    child: MaterialApp(
      home: PachakariFresh(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
