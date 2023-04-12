// ignore: file_names

import 'package:new1/home/menu/mydrawer.dart';
import 'package:new1/home/navigator.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                padtext(
                  name: "Sidharth",
                  fontsize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                SizedBox(height: 4),
                padtext(
                  name: "Welcome",
                  fontsize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                )
              ],
            ),
            InkWell(
              child: Column(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/mandan.png"),
                    backgroundColor: Colors.greenAccent,
                  ),
                )
              ]),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const mydrawer()));
              },
            )
          ]),
        ]),
      ),
      body: const navigator(),
      drawer: const mydrawer(),
    );
  }
}

// ignore: camel_case_types
class padtext extends StatelessWidget {
  final String name;
  final FontWeight fontWeight;
  final double fontsize;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const padtext(
      {super.key,
      required this.name,
      required this.fontsize,
      required this.fontWeight,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Text(
        name,
        style:
            TextStyle(fontSize: fontsize, fontWeight: fontWeight, color: color),
      ),
    );
  }
}
