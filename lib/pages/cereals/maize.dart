import 'package:flutter/material.dart';
import 'package:ecommerce/models/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

class MaizePage extends StatelessWidget {
  const MaizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maize'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Farmers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300],
                          ),
                          child: const Icon(Icons.person),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Farmer Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 16,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.amber,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text('4.0 (10)')
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: List.generate(nearbyDoctors.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(nearbyDoctors[index].profile),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. ${nearbyDoctors[index].name}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          const Text("General Farmers"),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(
                                Ionicons.star,
                                color: Colors.yellow[700],    
                                size: 18,
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 4, right: 6),
                                child: Text(
                                  "4.0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text("195 Reviews")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}


 
