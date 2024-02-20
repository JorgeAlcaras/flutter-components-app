import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCard2({Key? key, required this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      elevation: 10,
      shadowColor: Colors.black.withOpacity(1),
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: imageUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 100)
          ),
          if(name  != null)
            Container(
              padding: const EdgeInsets.all(5),
              child: Text(name!),
            ),
        ]
      ),
    );
  }
}