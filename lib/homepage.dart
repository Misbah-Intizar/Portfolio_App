import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final void Function(int) onTabSelected;
  const Homepage({super.key, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Portfolio")),
      body: Container(
        width: double.infinity,
        color: const Color(0xFFe6f7ff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('assets/pics/profile.jpeg'),
            ),
            const SizedBox(height: 16),
            Text(
              'Misbah Intizar',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Flutter Developer  & Digiatl Marketer',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Text(
              '“Turning ideas into apps & strategies into growth.”',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onTabSelected(1);
              },
              child: const Text("View My Work"),
            ),
          ],
        ),
      ),
    );
  }
}
