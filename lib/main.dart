import 'package:flutter/material.dart';
import 'package:mis_labs1/views/home_page.dart';
import 'package:mis_labs1/views/details_page.dart';

void main() {
  runApp(const ClothingApp());
}

class ClothingApp extends StatelessWidget {
  const ClothingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.lightBlue),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/details": (context) => const DetailsPage(),
      },
    );
  }
}
