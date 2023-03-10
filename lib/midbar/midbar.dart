import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'midbar.dart'; // import the MidBar widget

void main() {
  runApp(Midbar());
}

class Midbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      Text(
            "Search",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Search for cereals",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            "Listings",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.headline6,
          ),
    );
  
  }
}
