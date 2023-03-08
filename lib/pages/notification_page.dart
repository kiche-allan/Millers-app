import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('New message'),
            subtitle: Text('You have a new message from a miller'),
            trailing: IconButton(
              icon: Icon(Icons.delete_outline),
              onPressed: () {
                // Code to delete the notification
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text('Purchase confirmed'),
            subtitle: Text('Your sale has been confirmed by a miller'),
            trailing: IconButton(
              icon: Icon(Icons.delete_outline),
              onPressed: () {
                // Code to delete the notification
              },
            ),
          ),
          // Add more ListTiles for each notification
        ],
      ),
    );
  }
}
