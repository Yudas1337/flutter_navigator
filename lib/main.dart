import 'package:flutter/material.dart';
import 'package:flutter_navigator/pages/home_page.dart';
import 'package:flutter_navigator/pages/item_page.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => const HomePage(),
    '/item': (context) => ItemPage(),
  }));
}
