import 'package:flutter/material.dart';
import 'package:musicapp/lostpassword.dart';
import 'package:musicapp/registerpage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();
  final String imageUrl =
      "https://cdn-icons-png.flaticon.com/512/4787/4787623.png";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Container(color: Colors.tealAccent,
        child: ListView( // Wrap the Column with a ListView
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.contain,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email id.";
                        }
                        final emailRegex = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                        if (!emailRegex.hasMatch(value)) {
                          return "Enter the correct email.";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password.";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters.";
                        }
                        return null;
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        debugPrint("SUCCESSFUL");
                      }
                    },
                    child: Text("LOGIN"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lost()),
                      );
                    },
                    child: Text("Lost Password"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("GOOGLE"),
                      Text("FACEBOOK"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()),
                            );
                          },
                          child: Text("Register"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
