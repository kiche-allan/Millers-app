import 'package:ecommerce/functPart/model.dart';
import 'package:ecommerce/functPart/display.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FarmerInfoList extends StatelessWidget {
  final CollectionReference farmerInfoCollection =
      FirebaseFirestore.instance.collection('farmerInfo');

 FarmerInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: farmerInfoCollection.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        final farmerInfoList = snapshot.data!.docs.map((doc) => FarmerInfo(
              farmerName: doc['farmerName'],
              maizeBags: doc['maizeBags'],
              county: doc['county'],
              contactInfo: doc['contactInfo'],
            )).toList();
        return ListView.builder(
          itemCount: farmerInfoList.length,
          itemBuilder: (context, index) {
            return FarmerInfoCard(farmerInfo: farmerInfoList[index]);
          },
        );
      },
    );
  }
}
