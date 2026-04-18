import 'package:flutter/material.dart';

Widget homePage() {
  return Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("Notre app", style: TextStyle(color: Colors.white)),
    ),
    body: Column(
      children: [
        Text("TestApp", style: TextStyle(fontSize: 50, color: Colors.white)),
        Text("Votre application sera bientôt disponible"),
        Center(
          child: Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 56),
            margin: EdgeInsets.all(72),
            child: Text("Ceci est notre première application"),
          ),
        ),
      ],
    ),
  );
}
