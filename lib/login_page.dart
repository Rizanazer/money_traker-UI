import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth/auth.dart';

const List<String> list = <String>['sbi', 'fbi', 'icic', 'gramin bank'];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var usercontroller = TextEditingController();
  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _errorMessage() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Text(
        errorMessage == '' ? '' : 'Humm ? $errorMessage',
        style: const TextStyle(color: Colors.red),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget LoginOrRegisterButton() {
    return TextButton(
        onPressed: () {
          setState(() {
            isLogin = !isLogin;
          });
        },
        child: Text(isLogin ? 'register Instead' : 'Login Instead'));
  }

  final emailRegex = RegExp(
      r"^[A-Za-z0-9_!#$%&'*+\/=?`{|}~^.-]+@[A-Za-z0-9.-]+\.[A-Za-z0-9.-]+$");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Center(child: Text("M-TRackr")),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
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
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: createtext("Username", usercontroller),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
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
                      style: TextStyle(color: Colors.black),
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
                        if (emailRegex.hasMatch(emailcontroller.text) &&
                            passwordcontroller.text.isNotEmpty) {
                          // FirebaseAuth.instance
                          //     .createUserWithEmailAndPassword(
                          //         email: emailcontroller.text,
                          //         password: passwordcontroller.text)
                          //     .then((value) {
                          //   print("succes");
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => const HomePage(),
                          //   ));
                          // }).onError((error, stackTrace) {
                          //   print("unable to login");
                          // });
                          isLogin
                              ? signInWithEmailAndPassword()
                              : createUserWithEmailAndPassword();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("enter credentials")));
                        }
                      },
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.greenAccent),
                      child: Text(isLogin ? 'Login' : 'Register')),
                ),
                LoginOrRegisterButton(),
                _errorMessage(),
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
        labelStyle: const TextStyle(color: Colors.black26),
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
      style: const TextStyle(color: Colors.black),
      dropdownColor: Colors.white,
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
