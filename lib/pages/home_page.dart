import 'package:ecommerce/widgets/Cereals.dart';
import 'package:ecommerce/widgets/RiceFarmers.dart';
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
import 'package:ecommerce/midbar/midbar.dart';
import 'package:ecommerce/widgets/highest_review.dart';

import '../widgets/wheatfaarmers.dart';
import '../widgets/MilletFarmers.dart';



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
          
          const SizedBox(height: 15),
          const MidBar(),
          const Cereals(),
          const SizedBox(height: 25),
          
          
          Text(
            "Nearby Farmers and Products",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const NearbyDoctors(),
          const SizedBox(height: 25),

          Text(
            "Highest Starred and Reviewed Farmers",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 25),

          const HighestReview(),
          const SizedBox(height: 25),
          Text(
            "Wheat Farmers and Products",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 25),
          const WheatFarmers(),

          const SizedBox(height: 25),
          Text(
            "Millet Farmers and Products",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 25),
          const MilletFarmers(),
          const SizedBox(height: 25),
          Text(
            " Farmers and Products",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 25),

          const RiceFarmers()

          //bottom navigation      
        ],
        
      ),
    //i want to import a bottom navigation bar here from bottom_navigation_bar.dart
      
          bottomNavigationBar: const MyBottomNavigationBar(),
  
    );
    //bottom navigation
    
  }
}
