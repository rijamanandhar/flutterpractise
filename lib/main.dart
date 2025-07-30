import 'package:flutter/material.dart';
import 'package:myapp1/bank.dart';
import 'package:myapp1/calender.dart';
import 'package:myapp1/cinemaBooking.dart';
import 'package:myapp1/facebook.dart';
import 'package:myapp1/formpage.dart';
import 'package:myapp1/hamro_patro.dart';
import 'package:myapp1/home.dart';
import 'package:myapp1/image.dart';
import 'package:myapp1/learn_list.dart';
import 'package:myapp1/login.dart';
import 'package:myapp1/loginPage.dart';
import 'package:myapp1/login_page2.dart';
import 'package:myapp1/my_home_page.dart';
import 'package:myapp1/practise1.dart';
import 'package:myapp1/provider/login_provider.dart';
import 'package:myapp1/provider/signup.dart';
import 'package:myapp1/provider/signuppage.dart';
import 'package:myapp1/rija.dart';
import 'package:myapp1/snapchat.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),

        home: Signup(),
      ),
    );
  }
}

class Signuppage {}
