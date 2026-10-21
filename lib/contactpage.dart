import 'package:flutter/material.dart';

class Contactpage extends StatelessWidget {
  const Contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Get in touch',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          ContactSection(
            title: 'Phone Number',
            contacts: [
              {
                'icon': Icons.phone,
                'color': Colors.green,
                'title': 'Phone Number',
                'subtitle': '+923127943586',
              },
            ],
          ),
          ContactSection(
            title: "Email",
            contacts: [
              {
                'icon': Icons.email,
                'color': Colors.blue,
                'title': 'Email',
                'subtitle': 'misbahintezar022@gmail.com',
              },
            ],
          ),
          ContactSection(
            title: 'Location',
            contacts: [
              {
                'icon': Icons.location_on,
                'color': Colors.red,
                'title': 'Location',
                'subtitle': 'Multan Cantt',
              },
            ],
          ),
        ],
      ),
    );
  }
}

/// Reusable Section
class ContactSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> contacts;

  const ContactSection({
    super.key,
    required this.title,
    required this.contacts,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodyLarge),
            const Divider(),
            ...contacts.map(
              (c) => ListTile(
                leading: Icon(c['icon'], color: c['color']),
                title: Text(
                  c['title'],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Text(
                  c['subtitle'],
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
