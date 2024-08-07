import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "";

  final _fortuneList = [
    "Una boca cerrada no atrapa moscas.",
    "¡Ayuda! Estoy siendo retenido en una fábrica de galletas de la fortuna.",
    "Tendrás hambre de nuevo en una hora.",
    "El que se ríe último piensa más lento.",
    "Hoy es el mañana por el que te preocupabas ayer.",
    "La pereza es la madre de todos los vicios, pero al menos es una madre.",
    "No te tomes la vida demasiado en ser io; no saldrás vivo de ella.",
    "Encontraras al amor de tu vida en 24 horas.",
    "Ganaras la loteria si juegas tus numeros de la suerte!",
  ];

  void _randomFortune() {
    var random = Random();
    int randomNumber = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[randomNumber];
    });
    print(_currentFortune);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          //   title: const Text("Demo Page"),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Tu galleta de la fortuna dice:",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            ElevatedButton(onPressed: _randomFortune, child: Text("Otra galleta"))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
