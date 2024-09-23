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
          //leading: const Icon(Icons.menu),
          backgroundColor: const Color.fromARGB(154, 3, 36, 180),
          foregroundColor: Colors.white,
          title: const Text('Generador de noms'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: const Center(
          child: PeopleList()
        ),
      ),
    );
  }
}
