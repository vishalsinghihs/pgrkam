import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView(
        children: [
          NotificationItem(
            title: 'New Notification 1',
            description: 'This is the first notification description.',
          ),
          NotificationItem(
            title: 'New Notification 2',
            description: 'This is the second notification description.',
          ),
          NotificationItem(
            title: 'New Notification 3',
            description: 'This is the third notification description.',
          ),
          // Add more NotificationItem widgets for additional notifications
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String description;

  NotificationItem({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
        onTap: () {
          // Add any actions you want to perform when the notification is tapped
          // For example, navigate to a specific screen or show more details
          // For simplicity, let's print a message for now
          print('Notification tapped: $title');
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationPage(),
  ));
}
