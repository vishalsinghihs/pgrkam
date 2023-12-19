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
            title: 'New Notification ',
            description:
                'Join Samsung, where innovation thrives. Shape the future with cutting-edge technology and endless opportunities.',
          ),
          NotificationItem(
            title: 'New Notification ',
            description:
                'Unlock your potential at Microsoft. Explore groundbreaking projects, collaborate with brilliant minds, and drive global impact.',
          ),
          NotificationItem(
            title: 'New Notification  ',
            description:
                'Embark on a journey with Google. Innovate, collaborate, and shape the future of technology together.',
          ),
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
