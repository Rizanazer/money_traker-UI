import 'package:flutter/material.dart';

// ignore: camel_case_types
class accboxinfo extends StatefulWidget {
  const accboxinfo({super.key});

  @override
  State<accboxinfo> createState() => accboxinfoState();
}

// ignore: camel_case_types
class accboxinfoState extends State<accboxinfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Info",
          style: TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }
}
