import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


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
                "Loginin to your account",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 30),
              Text("Please sign in to your account"),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Email",

                  // hintStyle:
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
                  suffixIcon: InkWell(
                    onTap: () {
                      setState((){
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

                

                child: Text("Sign In"),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgotten Password ?",
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "____________or___________ sign in with",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              SizedBox(height: 8),
              
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
