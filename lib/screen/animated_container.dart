import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_components_app/theme/app_theme.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  bool _isAnimated = false;

  double _width = 100;
  double _height = 100;
  Color _color = Colors.purple;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void changeShape(){
    _width = Random().nextInt(300).toDouble() + 50;
    _height = Random().nextInt(300).toDouble() + 50;
    _borderRadius =  BorderRadius.circular(Random().nextInt(300).toDouble() + 10);
    _color = Color.fromRGBO(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      1
    );
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        width: _width,
        height: _height,
          decoration:
            BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.global,
        child: const Icon(Icons.play_arrow, color: Colors.white),
        onPressed: () => changeShape(),

    ),

      );
  }
}