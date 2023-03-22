import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsBar extends StatelessWidget {
  const ContactUsBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.lightGreen[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildContactIcon(
            Icons.phone,
            'Call Us',
            '+254745663745',
            () => launchUrl(Uri.parse('tel:+254745663745')),
          ),
          _buildContactIcon(
            Icons.mail,
            'Email Us',
            'mhindi77@gmail.com',
            () => launchUrl(Uri.parse('mailto:mhindi77@gmail.com')),
          ),
          _buildContactIcon(
            Icons.chat_bubble,
            'Chat with Us',
            'Live Chat',
            () => launchUrl(Uri.parse('https://example.com/live-chat')),
          ),
        ],
      ),
    );
  }

  Widget _buildContactIcon(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(height: 4),
          Text(title),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}