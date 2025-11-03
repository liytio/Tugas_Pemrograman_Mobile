import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import Layar Login

void main() {
  // Pastikan inisialisasi widget Flutter berjalan
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema Ticket App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, // Menggunakan tema gelap (Dark Theme)
        scaffoldBackgroundColor: const Color(0xFF0A1828), // Warna latar belakang utama
        primaryColor: const Color(0xFF1A237E), // Warna Navy/Biru Gelap
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1A237E),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white.withOpacity(0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintStyle: const TextStyle(color: Colors.white54),
        ),
      ),
      home: LoginScreen(), // Memulai aplikasi dari Layar Login
    );
  }
}
