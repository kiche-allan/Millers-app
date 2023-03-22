import 'package:ecommerce/functPart/maize_home.dart';
import 'package:ecommerce/functPart/farmer_input.dart';
import 'package:ecommerce/notifications/notification_page.dart';
import 'package:ecommerce/pages/messages_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ecommerce/analytics/analytics_page.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          icon: Icon(Ionicons.add_circle_outline),
          activeIcon: Icon(Ionicons.add_circle),
          label: "Buy",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.analytics_outline),
          activeIcon: Icon(Ionicons.analytics),
          label: "Analytics",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.chatbubble_ellipses_outline),
          activeIcon: Icon(Ionicons.chatbubble_ellipses),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_outlined),
          activeIcon: Icon(Icons.notifications_outlined),
          label: "Notifications",
        ),
      ],
      onTap: (index) {
        if (index == 1) {
          _goToListingPage(context);
        } else if (index == 4) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NotificationPage()),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AnalyticsPage()),
          );
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MessagesPage()),
          );
        }
      },
    );
  }

  void _goToListingPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FarmerInputForm()),
    );
  }
}

/*
class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analytics"),
      ),
      body: const Center(
        child: Text("This is the Analytics page"),
      ),
    );
  }
}
*/