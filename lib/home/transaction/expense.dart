import 'package:flutter/material.dart';

// ignore: camel_case_types
class expense extends StatefulWidget {
  const expense({super.key});

  @override
  State<expense> createState() => expenseState();
}

// ignore: camel_case_types
class expenseState extends State<expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("Expense"),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Outgoing Revenue",
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
