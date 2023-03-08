import 'package:ecommerce/widgets/health_needs.dart';
import 'package:ecommerce/widgets/nearby_doctors.dart';
import 'package:ecommerce/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ecommerce/pages/listing_page.dart';
import 'package:ecommerce/pages/search_page.dart';
import 'package:ecommerce/pages/filter_page.dart';
import 'package:ecommerce/pages/messages_page.dart';

void _goToListingPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ListingPage()),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello, Farmer"),
            Text(
              "Welcome to the platform",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            icon: const Icon(Ionicons.search_outline),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
            icon: const Icon(Ionicons.chatbubble_ellipses_outline),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterPage()),
              );
            },
            icon: const Icon(Ionicons.options_outline),
          ),
        ],
      ),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(Ionicons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            activeIcon: Icon(Ionicons.calendar),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Chat",
            activeIcon: Icon(Ionicons.chatbubble_ellipses),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            activeIcon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            _goToListingPage(
              context,
            );
          }
        },
      ),
    );
  }
}
