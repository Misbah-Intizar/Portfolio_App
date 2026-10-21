import 'package:flutter/material.dart';

class Skillspage extends StatelessWidget {
  const Skillspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Here are some of my skills.',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          children: [
            SkillsSection(
              title: 'Programming Skills',
              icon: Icons.code,
              iconColor: Colors.teal,
              skills: ['Flutter/Dart', 'C#', 'C++'],
            ),
            SkillsSection(
              title: 'Tools & Frameworks',
              icon: Icons.build,
              iconColor: Colors.orange,
              skills: [
                'ASP.NET Web Forms',
                'Visual Studio',
                'SQL Server',
                'Git & GitHub',
              ],
            ),
            SkillsSection(
              title: 'Certifications',
              icon: Icons.emoji_events,
              iconColor: Colors.amber,
              skills: [
                'Digital Marketing & e-Commerce',
                'Freelancing',
                'Email Marketing',
              ],
            ),
            SkillsSection(
              title: 'Soft Skills',
              icon: Icons.people,
              iconColor: Colors.indigo,
              skills: [
                'Problem Solving',
                'Time Management',
                'Team Collaboration',
                'Adaptability',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Reusable Skills Section
class SkillsSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final List<String> skills;

  const SkillsSection({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.skills,
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
            Row(
              children: [
                Icon(icon, color: iconColor),
                const SizedBox(width: 8),
                Text(title, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            const Divider(),
            ...skills.map(
              (skill) => Text(
                '• $skill',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
