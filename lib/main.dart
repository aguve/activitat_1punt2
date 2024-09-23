import 'package:activitat_1punt2/people_list.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generador de noms',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(154, 3, 36, 180),
          foregroundColor: Colors.white,
          title: const Text('Generador de noms'),
        ),
        body: const Center(
          child: PeopleList()
        ),
      ),
    );
  }
}
