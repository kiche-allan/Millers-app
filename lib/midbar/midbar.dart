import 'package:flutter/material.dart';
import 'package:ecommerce/pages/search_page.dart';

class MidBar extends StatelessWidget {
  const MidBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
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
        // Text(
        //   "Listings",
        //   style: Theme.of(context).textTheme.titleLarge,
        // ),
        Text(
          "Cereals Market Place",
          style: Theme.of(context).textTheme.titleLarge,
          
        ),
         //add padding to the bottom of the text
        const SizedBox(height: 15),
      ],
    );
  }
}
