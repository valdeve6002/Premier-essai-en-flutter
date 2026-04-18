import 'package:flutter/material.dart';
import 'package:test_app/accueil_page.dart';

void main() {
  runApp(myApp());
}

Widget myApp() {
  return MaterialApp(title: "Notre App", home: AccueilPage());
}
