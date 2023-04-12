import 'package:flutter/material.dart';

// ignore: camel_case_types
class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

// ignore: camel_case_types
class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "card",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
