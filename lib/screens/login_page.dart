import 'package:flutter/material.dart';

import 'package:week_1_login_page/widgets/bottom_login_page.dart';
import 'package:week_1_login_page/widgets/top_login_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopLoginPage(),
          BottomLoginPage(),
        ],
      ),
    );
  }
}
