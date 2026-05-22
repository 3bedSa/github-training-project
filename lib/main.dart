import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          primary: const Color(0xFF6366F1),
          secondary: const Color(0xFF10B981),
          background: const Color(0xFFF9FAFC),
        ),
        fontFamily: 'Roboto',
      ),
      home: const ProfileScreen(),
    );
  }
}
