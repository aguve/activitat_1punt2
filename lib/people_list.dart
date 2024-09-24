import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  final _randomNames = RandomNames(Zone.catalonia);

  // mètode per eliminar un element de la llista
  void _removeItem(int index) {
    setState(() {
      _suggestions.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i >= _suggestions.length) {
          for (var i = 0; i < 10; i++) {
            var tmpName = "${_randomNames.fullName()} ${_randomNames.surname()}";
            // com que he triat la llengua catalana, també he posat el format de noms que usem aquí.
            _suggestions.add(tmpName);
          }
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  _suggestions[i],
                  style: _biggerFont,
                ),
                tileColor: (i % 2 == 0) ? const Color.fromARGB(255, 188, 195, 199) : const Color.fromARGB(255, 255, 255, 255),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    _removeItem(i);
                  },
                ),
              ),
              //const Divider(),
            ],
          ),
        );
      }
    );
  }
}