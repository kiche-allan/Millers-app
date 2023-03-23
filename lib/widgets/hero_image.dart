import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'agriculture-icon',
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/agriculture-icon.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
