import 'package:flutter/material.dart';

// ignore: camel_case_types
class bankacc extends StatefulWidget {
  const bankacc({super.key});

  @override
  State<bankacc> createState() => bankaccState();
}

// ignore: camel_case_types
class bankaccState extends State<bankacc> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        "bankacc",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
