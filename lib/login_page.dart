import 'package:flutter/material.dart';
import 'home/HomePage.dart';

const List<String> list = <String>['sbi', 'fbi', 'icic', 'gramin bank'];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Center(child: Text("M-TRackr")),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/mandan.png"),
                    radius: 60,
                    backgroundColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: createtext("Email ", emailcontroller),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: createtext("password", passwordcontroller),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Row(children: const [
                    Text(
                      "Select ur bank",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: DropdownButtonExample(),
                    ),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FilledButton(
                      onPressed: () {
                        if (emailcontroller.text.isNotEmpty) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("enter credentials")));
                        }
                      },
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.greenAccent),
                      child: const Text("LOGIN")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AuthenticationService {}

TextField createtext(String name, var controller) {
  return TextField(
    style: const TextStyle(color: Colors.greenAccent),
    controller: controller,
    decoration: InputDecoration(
        labelText: name,
        labelStyle: const TextStyle(color: Colors.greenAccent),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(151, 12, 255, 121)))),
  );
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({
    super.key,
  });

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

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
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
// TextFormField(
//                         controller: _emailContoller,
//                         validator: (value) {
//                           if (value.isEmpty) {
//                             return 'Email cannot be empty';
//                           } else
//                             return null;
//                         },
//                         decoration: InputDecoration(
//                             labelText: 'Email',
//                             labelStyle: TextStyle(color: Colors.white)),
//                         style: TextStyle(color: Colors.white),
//                       ),
