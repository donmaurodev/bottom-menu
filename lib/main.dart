import 'package:flutter/material.dart';
import 'package:flutter_application_barra_inferior/screens/main_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Manejo de pantallas",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      color: Colors.amberAccent,
      home: const MainScreen(),
    );
  }
}
