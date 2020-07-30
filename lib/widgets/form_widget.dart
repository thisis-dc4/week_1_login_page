import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Email or Phone No.',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Password',
            ),
          ),
        ],
      ),
    );
  }
}
