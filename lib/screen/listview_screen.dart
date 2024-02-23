import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  final options = const ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  const ListView1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('ListView Example'),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),

          /*  ListTile(
            leading: Icon(Icons.map),
            title: Text('Hola'),
            
          ),*/
        ],
      ),
    );
  }
}
