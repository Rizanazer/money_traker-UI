import 'package:flutter/material.dart';

// ignore: camel_case_types
class income extends StatefulWidget {
  const income({super.key});

  @override
  State<income> createState() => incomeState();
}

// ignore: camel_case_types
class incomeState extends State<income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Income"),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Incoming Revenue",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
