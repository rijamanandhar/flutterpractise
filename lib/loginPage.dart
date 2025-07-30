import 'dart:math';

import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _passWord = TextEditingController();
  List<Auth> userList = [Auth(userName: "Rija Manandhar", passWord: "rija123")];
  bool isvisible = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,

        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "facebook",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mobile number or email address",
                  // hintStyle:
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please ";
                  } else {
                    return null;
                  }
                },
                controller: _username,
              ),

              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  // hintStyle:
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },
                    child: Icon(
                      isvisible == true
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                obscureText: isvisible ? false : true,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 4) {
                    return "Please ";
                  } else {
                    return null;
                  }
                },
                controller: _passWord,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final corrected = userList.firstWhere(
                      (user) =>
                          user.userName == _username.text.trim() &&
                          user.passWord == _passWord.text.trim(),
                      orElse: () => Auth(userName: "", passWord: ""),
                    );
                    if (corrected.userName != "") {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Sucessful")));
                    } else {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Invalid")));
                    }
                  }
                },

                child: Text("Login"),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgotten Password ?",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "______________________or______________________",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(MediaQuery.of(context).size.width, 40),
                  shape: BeveledRectangleBorder(),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final okayUser = userList.firstWhere(
                      (user) =>
                          user.userName == _username.text.trim() &&
                          user.passWord == _passWord.text.trim(),
                      orElse: () => Auth(userName: "", passWord: ""),
                    );
                    if (okayUser.userName != "") {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Sucessful")));
                    } else {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Invalid")));
                    }
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Invalid")));
                  }
                },
                child: Text("Create a new account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Auth {
  String? userName;
  String? passWord;
  Auth({this.userName, this.passWord});
}
