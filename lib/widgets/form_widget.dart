import 'package:flutter/material.dart';

import 'package:week_1_login_page/global.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Container(
      margin: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: orangeColor.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 5.0,
            offset: const Offset(3.0, 4.0),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email or Phone No.',
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
                fillColor: Colors.black,
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
