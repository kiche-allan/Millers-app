import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math';

import '../models/wheat_model.dart';

class WheatFarmers extends StatelessWidget {
  const WheatFarmers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nearbyFarmersWithLocation = nearbyFarmers
        .map((farmer) => FarmerWithLocation(farmer, _getRandomLocation()))
        .toList();

    final chunkedFarmers = _chunkList(nearbyFarmersWithLocation, 1);

    return Column(
      children: List.generate(chunkedFarmers.length, (index) {
        final currentRowFarmers = chunkedFarmers[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(currentRowFarmers.length, (index) {
              final farmer = currentRowFarmers[index];
              return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(farmer.farmerModel.profile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Frm. ${farmer.farmerModel.name}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          farmer.location,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.star,
                              color: Colors.yellow[700],
                              size: 18,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, right: 6),
                              child: Text(
                                "4.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Text("195 Reviews")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      }),
    );
  }

  List<List<T>> _chunkList<T>(List<T> list, int chunkSize) {
    return List.generate(
        (list.length / chunkSize).ceil(),
        (i) => list.sublist(
            i * chunkSize,
            i * chunkSize + chunkSize > list.length
                ? list.length
                : i * chunkSize + chunkSize));
  }

  String _getRandomLocation() {
    List<String> locations = [
      'Nakuru',
      'Nairobi',
      'Mombasa',
      'Kisumu',
      'Eldoret',
      'Kitale'
    ];
    return locations[Random().nextInt(locations.length)];
  }
}

class FarmerWithLocation {
  final farmerModel;
  final String location;

  FarmerWithLocation(this.farmerModel, this.location);
}
