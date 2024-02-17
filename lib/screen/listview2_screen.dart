import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  final options = const [
    'Goku',
    'Veggeta',
    'Gohan',
    'Trunks',
    'Goten',
    'Piccolo',
    'Krillin',
    'Yamcha',
    'Bulma',
    'Master Roshi',
    'Dende',
    'Kami',
    'Pilaf',
    'Mai',
    'Shu',
    'Bardock',
    'Raditz',
    'Nappa',
    'Vegeta',
    'Frieza',
    'Cell',
    'Majin Buu',
    'Beerus',
    'Whis',
  ];
  const ListView2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dragon Ball Z Characters')),
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
