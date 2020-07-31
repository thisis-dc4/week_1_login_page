import 'package:flutter/material.dart';

import 'package:week_1_login_page/global.dart';
import 'package:week_1_login_page/screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: Scaffold(
        backgroundColor: orangeColor,
        body: LoginPage(),
      ),
    );
  }
}
