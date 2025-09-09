import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // 1. Import package provider
import 'splash_screen.dart';
import 'destinasi_provider.dart'; // 2. Import file provider yang baru dibuat

void main() {
  // 3. Bungkus aplikasi dengan ChangeNotifierProvider
  runApp(
    ChangeNotifierProvider(
      create: (context) => DestinasiProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}