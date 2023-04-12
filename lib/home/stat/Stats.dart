// ignore: file_names
import 'package:flutter/material.dart';

List<String> month = <String>[
  'jan',
  'feb',
  'mar',
  'apr',
  'may',
  'jun',
  'jul',
  'aug',
  'sept',
  'oct',
  'nov',
  'dec',
];
const List<int> days = [
  31,
  28,
  31,
  30,
  31,
  30,
  31,
  31,
  30,
  31,
  30,
  31,
];

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => StatsState();
}

class StatsState extends State<Stats> {
  int index = 0;
  int day = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: (index < 0)
                    ? null
                    : () => setState(() {
                          if (day <= 1) {
                            index--;
                            if (index < 0) index = month.length - 1;
                            day = days.elementAt(index);
                          } else {
                            day--;
                          }
                        }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  "<",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 25),
                )),
            Text(
              "${month.elementAt(index)} $day",
              style: const TextStyle(color: Colors.greenAccent, fontSize: 25),
            ),
            ElevatedButton(
                onPressed: index > month.length - 1
                    ? null
                    : () => setState(() {
                          if (day >= days.elementAt(index)) {
                            index++;
                            if (index > month.length - 1) index = 0;
                            day = 1;
                          } else {
                            day++;
                          }
                        }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  ">",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 25),
                ))
          ],
        ),
        const tab()
      ],
    );
  }
}

// ignore: camel_case_types
class tab extends StatefulWidget {
  const tab({super.key});

  @override
  State<tab> createState() => tabState();
}

// ignore: camel_case_types
class tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.greenAccent,
                tabs: [
                  Tab(
                    text: 'daily',
                  ),
                  Tab(
                    text: 'calender',
                  ),
                  Tab(
                    text: 'monthly',
                  ),
                  Tab(
                    text: 'summery',
                  ),
                  Tab(
                    text: 'note',
                  ),
                ]),
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: Colors.red,
                width: .5,
              ))),
              child: const TabBarView(children: <Widget>[
                Text("1"),
                Text("2"),
                Text("3"),
                Text("4"),
                Text("5"),
              ]),
            )
          ]),
    );
  }
}
