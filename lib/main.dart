import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Art App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,

        // Background color for all screens
        scaffoldBackgroundColor: const Color.fromARGB(255, 237, 213, 242),

        // AppBar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 247, 181, 223),
          foregroundColor: Colors.white,
        ),

        // TextField theme
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),

        // Button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 220, 83, 184),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
