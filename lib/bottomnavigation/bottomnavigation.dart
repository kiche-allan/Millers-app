import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
          label: "Add",
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
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NotificationPage()),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AnalyticsPage()),
          );
        }
      },
    );
  }

  void _goToListingPage(BuildContext context) {
    // Do something when the second item is pressed
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Center(
        child: Text("This is the Notification page"),
      ),
    );
  }
}

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analytics"),
      ),
      body: Center(
        child: Text("This is the Analytics page"),
      ),
    );
  }
}
