import 'package:flutter/material.dart';
import 'package:flutter_components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.credit_card),
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: const[
         CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(name: 'Eye 1', imageUrl:'https://img.freepik.com/foto-gratis/retrato-abstracto-ojo-elegancia-mujeres-jovenes-generado-ai_188544-9712.jpg'),
          SizedBox(height: 10),
          CustomCard2(imageUrl: 'https://img.freepik.com/free-photo/multi-colored-creativity-close-up-human-eye-generated-by-ai_188544-15574.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1708300800&semt=ais'),
          SizedBox(height: 10),
          CustomCard2(name: 'Eye 3', imageUrl: 'https://img.freepik.com/free-photo/beauty-human-eye-women-looking-generative-ai_188544-12682.jpg'),
          SizedBox(height: 10),
        //  CustomCard2(),
        ],
      ),
    );
  }
}
