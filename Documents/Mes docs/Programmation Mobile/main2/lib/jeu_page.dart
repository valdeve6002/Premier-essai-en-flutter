import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class JeuPage extends StatefulWidget {
  const JeuPage({super.key});

  @override
  State<JeuPage> createState() => _JeuPageState();
}

class _JeuPageState extends State<JeuPage> {
  int positionBonneReponse = 0;
  int score = 0;

  void nouveauJeu() {
    setState(() {
      positionBonneReponse = Random().nextInt(9) + 1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(milliseconds: 2000), (t) {
      nouveauJeu();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jeu")),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Text("Score: $score", style: TextStyle(fontSize: 36)),
                Text("Appuyez sur le cadre vert"),
              ],
            ),
          ),
          Expanded(child: Row(children: [cadre(numeroCadre: 1), cadre(numeroCadre: 2), cadre(numeroCadre: 3)])),
          Expanded(child: Row(children: [cadre(numeroCadre: 4), cadre(numeroCadre: 5), cadre(numeroCadre: 6)])),
          Expanded(child: Row(children: [cadre(numeroCadre: 7), cadre(numeroCadre: 8), cadre(numeroCadre: 9)])),
        ],
      ),
    );
  }

  Widget cadre({Color couleur = Colors.red, int? numeroCadre}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          print("Cardre appuyé $numeroCadre");
          if (positionBonneReponse == numeroCadre) {
            score += 10;
            print("Gagné");
          } else {
            score -= 5;
            if (score < 0) score = 0;

            print("Perdu");
          }
          nouveauJeu();
        },
        child: Container(
          margin: EdgeInsets.all(1),
          color: positionBonneReponse == numeroCadre ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
