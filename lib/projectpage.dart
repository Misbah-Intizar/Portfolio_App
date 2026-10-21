import 'package:flutter/material.dart';

class Projectpage extends StatelessWidget {
  const Projectpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Here are some of my projects',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          children: [
            ProjectsSection(
              title: 'Web Projects',
              projects: [
                {
                  'icon': Icons.language,
                  'color': Colors.teal,
                  'title': 'Website Projects',
                  'subtitle':
                      'A responsive website built with ASP.NET Web Forms',
                },
                {
                  'icon': Icons.store,
                  'color': Colors.deepOrange,
                  'title': 'Sales Management System',
                  'subtitle': 'A web app for managing sales and inventory.',
                },
              ],
            ),
            ProjectsSection(
              title: 'Mobile App Projects',
              projects: [
                {
                  'icon': Icons.phone_android,
                  'color': Colors.deepPurple,
                  'title': 'Portfolio App',
                  'subtitle': 'A personal portfolio app built with Flutter.',
                },
                {
                  'icon': Icons.currency_exchange,
                  'color': Colors.green,
                  'title': 'Currency Converter',
                  'subtitle': 'A Flutter app for converting currencies.',
                },
                {
                  'icon': Icons.cloud,
                  'color': Colors.lightBlue,
                  'title': 'Weather App',
                  'subtitle': 'A Flutter app showing weather updates.',
                },
                {
                  'icon': Icons.shopping_cart,
                  'color': Colors.pinkAccent,
                  'title': 'Shopping App',
                  'subtitle': 'An e-commerce mobile application.',
                },
              ],
            ),
            ProjectsSection(
              title: 'Academic Projects',
              projects: [
                {
                  'icon': Icons.smart_toy,
                  'color': Colors.blue,
                  'title': 'ChatBot AI',
                  'subtitle': 'A chatbot for task management.',
                },
                {
                  'icon': Icons.memory,
                  'color': Colors.deepPurple,
                  'title': 'Compiler Design Tasks',
                  'subtitle':
                      'Lab activities and assignments from Compiler Design course.',
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Reusable Section
class ProjectsSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> projects;

  const ProjectsSection({
    super.key,
    required this.title,
    required this.projects,
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
            ...projects.map(
              (p) => ListTile(
                leading: Icon(p['icon'], color: p['color']),
                title: Text(
                  p['title'],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Text(
                  p['subtitle'],
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
