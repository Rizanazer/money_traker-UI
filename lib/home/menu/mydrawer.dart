import 'package:new1/home/menu/settings.dart';
import 'package:new1/login_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

// ignore: camel_case_types
class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.black26,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/mandan.png",
                    height: 100,
                    width: 100,
                  ),
                  const Text(
                    "sidarth",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text(
                "Settings",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const settings(),
                ));
              },
            ),
            ListTile(
              title: const Text(
                "Logout",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
