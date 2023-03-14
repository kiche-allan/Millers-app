import 'package:flutter/material.dart';
import 'package:user_card/items/functPart/farmer_input.dart';
import 'package:user_card/items/functPart/retrieve.dart';


class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Farmers & Millers'),
      ),
      body: FarmerInfoList(),
      
    ),
    );
  }
}
