import 'package:flutter/material.dart';

// ignore: camel_case_types
class cash extends StatefulWidget {
  const cash({super.key});

  @override
  State<cash> createState() => _cashState();
}

// ignore: camel_case_types
class _cashState extends State<cash> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "cash",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
