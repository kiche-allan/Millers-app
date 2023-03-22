import 'package:ecommerce/functPart/model.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

var radius = 10.0;

class FarmerInfoCard extends StatelessWidget {
  final FarmerInfo farmerInfo;

  const FarmerInfoCard({super.key, required this.farmerInfo});

  @override
  Widget build(BuildContext context) {
    //const SizedBox(height: 24);
    return Card(
      elevation: 20,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      color: const Color.fromARGB(255, 212, 243, 225),
      child: Container(
          // crossAxisAlignment: CrossAxisAlignment.center,
          //children: [
          //  padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 6),
          width: double.maxFinite,
          height: 70,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          decoration: BoxDecoration(
            //color: Theme.of(context).primaryColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: const Icon(Icons.person)                 
                  ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(farmerInfo.farmerName),
                Text('${farmerInfo.maizeBags}'),
                Text(farmerInfo.county),
                //Text(farmerInfo.contactInfo),
                ],
              ),
              /*
              Stack(
                  children: [
                    BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Text(farmerInfo.contactInfo),
                    ),
                  ],
                ),
                */
            ],
          ),
          ),
    );
  }
}
