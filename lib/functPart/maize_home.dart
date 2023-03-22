import 'package:ecommerce/functPart/retrieve.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/bottomnavigation/contactus.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maize Market Place'),
          titleTextStyle: const TextStyle(color: Colors.black),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.lightGreen[100],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.black,
          ),
        ),
        body: FarmerInfoList(),
        bottomNavigationBar: ContactUsBar(),
      ),
    );
  }
}
