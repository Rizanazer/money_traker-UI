import 'package:new1/home/stratagy/moneysaver.dart';
import 'package:new1/home/stratagy/simplemode.dart';
import 'package:flutter/material.dart';

class Stratagy extends StatefulWidget {
  const Stratagy({super.key});

  @override
  State<Stratagy> createState() => _StratagyState();
}

class _StratagyState extends State<Stratagy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 20,
        ),
        buttonsimple(
          name: "Optimized Mode",
          icon: "assets/moneysaver.png",
          page: moneysaver(),
          x: 50,
        ),
        buttonsimple(
          name: "Simple Mode",
          icon: "assets/poor.png",
          page: simplemode(),
          x: 60,
        )
      ],
    );
  }
}

// ignore: camel_case_types
class buttonsimple extends StatelessWidget {
  final String name;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  // ignore: prefer_typing_uninitialized_variables
  final page;
  final double x;
  const buttonsimple(
      {super.key,
      required this.name,
      required this.icon,
      required this.page,
      required this.x});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: x, vertical: 10),
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => page));
          },
          icon: Image.asset(
            icon,
            width: 20,
            height: 20,
          ),
          label: Text(name),
        ));
  }
}
