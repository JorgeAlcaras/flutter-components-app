import 'package:flutter/material.dart';
import 'package:flutter_components_app/screen/screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('Nombre de ruta: $index'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    /*final route = MaterialPageRoute(
                        builder: (context) => const ListView1());
                    Navigator.push(context, route);

                    print('Tapped: $index');
                    */
                    Navigator.pushNamed(context, 'listview2');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: (999)));
  }
}
