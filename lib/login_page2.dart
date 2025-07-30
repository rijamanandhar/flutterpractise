import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp1/provider/login_provider.dart';
import 'package:provider/provider.dart';

class Loginpage2 extends StatefulWidget {
  const Loginpage2({super.key});

  @override
  State<Loginpage2> createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Loginpage2> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginProvider>(
        builder: (_, loginProvider, child) => Form(
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
                  controller: loginProvider.username,
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
                        loginProvider.toggle();
                      },
                      child: Icon(
                        loginProvider.isvisible == true
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                  obscureText: loginProvider.isvisible ? false : true,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 4) {
                      return "Please ";
                    } else {
                      return null;
                    }
                  },
                  controller: loginProvider.passWord,
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
                      loginProvider.checkUser(context);
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
                      final okayUser = loginProvider.userList.firstWhere(
                        (user) =>
                            user.userName ==
                                loginProvider.username.text.trim() &&
                            user.passWord == loginProvider.passWord.text.trim(),
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
      ),
    );
  }
}
