import 'package:new1/home/stat/Stats.dart';
import 'package:new1/home/stratagy/stratagy.dart';
import 'package:new1/home/transaction/Transaction.dart';
import 'package:new1/home/accounts/accounts.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: camel_case_types
class navigator extends StatefulWidget {
  const navigator({super.key});

  @override
  State<navigator> createState() => _navigatorState();
}

// ignore: camel_case_types
class _navigatorState extends State<navigator> {
  // ignore: non_constant_identifier_names
  int Index = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const Transaction(),
    const Stats(),
    const accounts(),
    const Stratagy(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(Index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Transaction',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: 'Stats',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_sharp),
            label: 'Accounts',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Stratagy',
            backgroundColor: Colors.greenAccent,
          ),
        ],
        currentIndex: Index,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}

// ignore: camel_case_types

// ignore: camel_case_types
class buttonname extends StatelessWidget {
  final String name;
  final double x;
  final double y;
  final double z;
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  // ignore: prefer_typing_uninitialized_variables
  final pagex;
  const buttonname(
      {super.key,
      required this.name,
      required this.x,
      required this.pagex,
      required this.icon,
      required this.y,
      required this.z});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => pagex));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: x, vertical: y)),
                label: Text(name),
                icon: Image.asset(
                  icon,
                  width: 20,
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircularPercentIndicator(
                  radius: 18,
                  animation: true,
                  lineWidth: 5,
                  progressColor: Colors.red,
                  percent: z,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class chart extends StatelessWidget {
  final double q;
  final String v;
  // ignore: prefer_typing_uninitialized_variables
  final w;
  const chart({super.key, required this.q, required this.v, required this.w});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => w));
      },
      child: CircularPercentIndicator(
        backgroundColor: Colors.transparent,
        progressColor: Colors.greenAccent,
        radius: 50.0,
        lineWidth: 10.0,
        animation: true,
        percent: q,
        center: Text(
          v,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.greenAccent),
        ),
      ),
    );
  }
}
