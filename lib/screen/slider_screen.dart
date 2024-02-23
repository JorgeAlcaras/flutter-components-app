import 'package:flutter/material.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 0;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Slider Screen')),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          CheckboxListTile(
            activeColor: AppTheme.global,
            title: Text('Enable with checkbox'),
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {
                });
              }
          ),

          SwitchListTile(
            activeColor: AppTheme.global,
              title: Text('Enable with switch'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
            _sliderEnable = value ?? true;
          })
          ),

          const SizedBox(height: 5,),

          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 20),
            const Text('Size', style: TextStyle(fontSize: 15),),
            const SizedBox(width: 300),
            Text('${_sliderValue.toInt()}%', style: TextStyle(fontSize: 15),),
            const SizedBox(width: 20,)

      ],
          ),

          const SizedBox(height: 5),

          Slider(
            value: _sliderValue,
              max: 100,
              min: 0,
              label: 'Slider',
            activeColor: AppTheme.global,
            onChanged: _sliderEnable ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            :null
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
              image: const NetworkImage('https://i.pinimg.com/originals/89/e0/de/89e0dea18ceb5e396f9ec1a5ae109262.png'),
            fit: BoxFit.contain,
            height: _sliderValue * 6,
          ),
            ),
          ),
          const SizedBox(height: 20),
          const AboutListTile(),
        ],
      ),
    );
  }
}