// ignore: file_names
import 'package:new1/login_page.dart';
import 'package:flutter/material.dart';
import 'package:new1/home/transaction/Food.dart';
import 'package:new1/home/transaction/Shopping.dart';
import 'package:new1/home/transaction/Travel.dart';
import 'package:new1/home/transaction/expense.dart';
import 'package:new1/home/transaction/income.dart';
import 'package:new1/home/navigator.dart';
import 'package:new1/home/transaction/Entertainment.dart';
import '../HomePage.dart';

const List<String> list1 = <String>[
  '10',
  '20',
  '30',
  '40',
  '50',
  '60',
  '70',
  '80',
  '90'
];

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 70),
                child: Column(
                  children: const [
                    chart(q: .25, v: "25%", w: income()),
                    SizedBox(
                      height: 10,
                    ),
                    padtext(
                      name: "Income",
                      fontsize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 70),
                child: Column(
                  children: const [
                    chart(q: .75, v: "75%", w: expense()),
                    SizedBox(
                      height: 10,
                    ),
                    padtext(
                      name: "Expense",
                      fontsize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Row(children: const [
              Text(
                "Select ur M-limiter",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: DropdownButtonExample(),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "catagery",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const buttonname(
            name: "Entertainment",
            x: 100,
            pagex: Entertainment(),
            icon: "assets/ent.png",
            y: 20,
            z: 0.2,
          ),
          const SizedBox(
            height: 10,
          ),
          const buttonname(
            name: "Food",
            x: 129,
            pagex: Food(),
            icon: "assets/food.png",
            y: 20,
            z: 0.3,
          ),
          const SizedBox(
            height: 10,
          ),
          const buttonname(
            name: "Shopping",
            x: 115,
            pagex: Shopping(),
            icon: "assets/shop.png",
            y: 20,
            z: 0.1,
          ),
          const SizedBox(
            height: 10,
          ),
          const buttonname(
            name: "Travel",
            x: 125,
            pagex: Travel(),
            icon: "assets/travel.png",
            y: 20,
            z: 0.4,
          ),
        ],
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({
    super.key,
  });

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list1.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.greenAccent),
      dropdownColor: Colors.black,
      underline: Container(
        height: 2,
        color: Colors.greenAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list1.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
