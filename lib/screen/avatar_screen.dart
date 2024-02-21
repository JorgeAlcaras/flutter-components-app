import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
            child: const Text('JA'),
          ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/2023-chevrolet-corvette-z06-003-1635265937.jpg'),
    ),
    ),
    );
  }
}