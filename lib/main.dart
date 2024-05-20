import 'package:chart_example/custom_maps.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Gráfico de Ventas')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MapScreen(),
        ),
      ),
    );
  }
}
