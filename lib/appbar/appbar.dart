import 'package:ecommerce/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ecommerce/pages/search_page.dart';
import 'package:ecommerce/pages/filter_page.dart';
import 'package:ecommerce/pages/messages_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightGreen[100],

      title: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text("Hello, Farmer"),
          Text(
            "Welcome to the platform",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),

      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          },
          icon: const Icon(Ionicons.search_outline),
        ),
        /*
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MessagesPage()),
            );
          },
          icon: const Icon(Ionicons.chatbubble_ellipses_outline),
        ),
        */

        /*
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FilterPage()),
            );
          },
          icon: const Icon(Ionicons.options_outline),
        ),
        */

        IconButton(
          tooltip: 'Log Out',
          icon: const Icon(Icons.logout),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              if (kDebugMode) {
                print('Signed Out');
                print('User has ended Session!');
              }
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            });
          },
        ),
      ],
    );
  }
}
