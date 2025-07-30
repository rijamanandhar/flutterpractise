import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController username = TextEditingController();
  final TextEditingController passWord = TextEditingController();
  bool isvisible = true;
  void toggle() {
    isvisible = !isvisible;
    notifyListeners();
  }

  List<Auth> userList = [Auth(userName: "Rija Manandhar", passWord: "rija123")];
  void checkUser(BuildContext context) {
    final corrected = userList.firstWhere(
      (user) =>
          user.userName == username.text.trim() &&
          user.passWord == passWord.text.trim(),
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
}

class Auth {
  String? userName;
  String? passWord;
  Auth({this.userName, this.passWord});
}
