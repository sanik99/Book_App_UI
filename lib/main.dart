import 'package:book_app/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Book App',
    theme: ThemeData(primaryColor: Colors.white70),
    home: Home(),
  ));
}
