import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
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
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.info_outline, color: Colors.blue[900]),
              title: Text('New message', style: TextStyle(color: Colors.blue[900])),
              subtitle: Text('You have a new message from a miller', style: TextStyle(color: Colors.blue[900])),
              trailing: IconButton(
                icon: Icon(Icons.delete_outline, color: Colors.blue[900]),
                onPressed: () {
                  // Code to delete the notification
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.check_circle_outline, color: Colors.blue[900]),
              title: Text('Purchase confirmed', style: TextStyle(color: Colors.blue[900])),
              subtitle: Text('Your sale has been confirmed by a miller', style: TextStyle(color: Colors.blue[900])),
              trailing: IconButton(
                icon: Icon(Icons.delete_outline, color: Colors.blue[900]),
                onPressed: () {
                  // Code to delete the notification
                },
              ),
            ),
          ),
          // Add more ListTiles for each notification
        ],
      ),
    );
  }
}
