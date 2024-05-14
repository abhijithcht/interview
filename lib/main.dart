import 'package:flutter/material.dart';
import 'package:interview/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle().copyWith(
            color: Colors.black,
            fontSize: 14,
          ),
          enabledBorder: const OutlineInputBorder().copyWith(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: const OutlineInputBorder().copyWith(
            borderSide: const BorderSide(color: Colors.black12, width: 1),
            borderRadius: BorderRadius.circular(14),
          ),
          border: const OutlineInputBorder().copyWith(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
