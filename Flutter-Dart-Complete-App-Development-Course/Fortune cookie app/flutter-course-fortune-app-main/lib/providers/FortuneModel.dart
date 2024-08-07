import 'dart:math';

import 'package:flutter/material.dart';

class FortuneModel with ChangeNotifier {
  String _currentFortune = "";

  final _fortuneList = [
    "El amor es un juego que dos pueden jugar y ambos pueden ganar",
    "La felicidad está en tus manos",
    "No dejes que el miedo te detenga",
    "El miedo mata más sueños que el fracaso",
    "Un corazón agradecido es un imán para los milagros",
    "Cada día es una segunda oportunidad",
    "La paciencia es una virtud que trae grandes recompensas",
    "La risa es el mejor medicamento",
    "La suerte favorece a los audaces",
    "Un viaje de mil millas comienza con un solo paso",
    "El tiempo cura todas las heridas",
  ];

  String get currentFortune => _currentFortune;

  FortuneModel() {
    _generateRandomFortune();
  }

  void _generateRandomFortune() {
    var random = Random();
    int randNum = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[randNum];

    notifyListeners();
  }

  // Method to get a new random fortune
  void getNewFortune() {
    _generateRandomFortune();
  }
}
