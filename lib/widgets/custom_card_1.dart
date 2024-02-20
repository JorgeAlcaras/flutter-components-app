import 'package:flutter/material.dart';
import 'package:flutter_components_app/router/app_routes.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.photo_album, color: AppTheme.global),
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text('Soy el subtitulo de esta tarjeta'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: (){
                  },
                  child: const Text('Ok'),
                ),
              ],
            )
          ],
        )
    );
  }
}
