import 'package:flutter/material.dart';
import 'package:portfolioapp/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // 🌟 Global theme applied everywhere
      theme: ThemeData(
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),

        primaryColor: const Color(0xFF0A192F),
        scaffoldBackgroundColor: const Color(0xFFe6f7ff),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A192F),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF0A192F),
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey[400],
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),

        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontSize: 15),
          bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),

      // 👇 Navigation is now in its own file
      home: const NavigationPage(),
    );
  }
}
