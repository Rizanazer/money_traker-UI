import 'package:new1/home/accounts/accboxinfo.dart';
import 'package:new1/home/accounts/bankacc.dart';
import 'package:new1/home/accounts/card.dart';
import 'package:new1/home/accounts/cash.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class accounts extends StatelessWidget {
  const accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: ((context) => const accboxinfo())));
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  accbox1(name: "Assets", no: 0.00, color: Colors.blueAccent),
                  accbox1(
                      name: "Liabilities", no: 0.00, color: Colors.redAccent),
                  accbox1(name: "Total", no: 0.00, color: Colors.white)
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const accbox2(name: "CASH", no: 0.00, name1: "Cash", page: cash()),
        const accbox2(
            name: "ACCOUNTS",
            no: 0.00,
            name1: "Bank Accounts ",
            page: bankacc()),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        "CARD",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text("Balance payment",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "₹ 0.0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("  outst.Balance",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "₹ 0.0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const card()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Card",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "₹ 0.0                     ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "₹ 0.0         ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class accbox1 extends StatelessWidget {
  final String name;
  final double no;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const accbox1(
      {super.key, required this.name, required this.no, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        Text(
          no.toString(),
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class accbox2 extends StatelessWidget {
  final String name;
  final String name1;
  final double no;
  // ignore: prefer_typing_uninitialized_variables
  final page;
  const accbox2({
    super.key,
    required this.name,
    required this.no,
    required this.name1,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Text(
                "₹ $no",
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name1,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  "₹ $no",
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
