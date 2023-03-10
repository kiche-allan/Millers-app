import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/health_needs.dart';
import 'package:ecommerce/widgets/nearby_doctors.dart';
import 'package:ecommerce/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ecommerce/pages/listing_page.dart';
import 'package:ecommerce/pages/search_page.dart';
import 'package:ecommerce/pages/filter_page.dart';
import 'package:ecommerce/pages/messages_page.dart';
import 'package:ecommerce/pages/notification_page.dart';
import 'package:ecommerce/pages/analytics_page.dart';
import 'package:ecommerce/widgets/hero_image.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
