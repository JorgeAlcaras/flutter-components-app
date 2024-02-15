import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  final options = const ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  const ListView2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('ListView Example 2'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  print('Tapped: ${options[index]}');
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
