import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/%20advertising_app/screen/main_screen.dart';
import 'package:flutter_ui_challenge/doctor_app/screens/doctor_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const DoctorHomeScreen(),
    );
  }
}
