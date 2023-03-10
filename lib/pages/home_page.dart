import 'package:ecommerce/widgets/health_needs.dart';
import 'package:ecommerce/widgets/nearby_doctors.dart';
import 'package:ecommerce/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ecommerce/pages/listing_page.dart';
import 'package:ecommerce/appbar/appbar.dart';
import 'package:ecommerce/pages/search_page.dart';
import 'package:ecommerce/pages/filter_page.dart';
import 'package:ecommerce/pages/messages_page.dart';
import 'package:ecommerce/pages/notification_page.dart';
import 'package:ecommerce/pages/analytics_page.dart';
import 'package:ecommerce/widgets/hero_image.dart';
import 'package:ecommerce/bottomnavigation/bottomnavigation.dart';



void _goToListingPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ListingPage()),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: const MyAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          
          const UpcomingCard(),
          const SizedBox(height: 20),
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
          const SizedBox(height: 15),
          const HealthNeeds(),
          const SizedBox(height: 25),
          Text(
            "Nearby Doctors",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const NearbyDoctors(),
        ],
      ),
    //i want to import a bottom navigation bar here from bottom_navigation_bar.dart
    bottomNavigationBar: const MyBottomNavigationBar(),


  
    );
  }
}
