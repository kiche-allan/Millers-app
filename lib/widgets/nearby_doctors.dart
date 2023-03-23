import 'package:ecommerce/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nearbyDoctorsWithLocation = nearbyDoctors
        .map((doctor) => DoctorWithLocation(doctor, "Kesses"))
        .toList();

    final chunkedDoctors = _chunkList(nearbyDoctorsWithLocation, 1);

    return Column(
      children: List.generate(chunkedDoctors.length, (index) {
        final currentRowDoctors = chunkedDoctors[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(currentRowDoctors.length, (index) {
              final doctor = currentRowDoctors[index];
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
                              image: AssetImage(doctor.doctorModel.profile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Frm. ${doctor.doctorModel.name}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          doctor.location,
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
}

class DoctorWithLocation {
  final doctorModel;
  final String location;

  DoctorWithLocation(this.doctorModel, this.location);
}
