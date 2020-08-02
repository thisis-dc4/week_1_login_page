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
    final double _width = MediaQuery.of(context).size.width;
    final double _loginButtonWidth = _width * 0.55;
    final _formKey = GlobalKey<FormState>();
    const String emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 25.0, right: 25.0),
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
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value.isEmpty ||
                        value.length < 4 ||
                        !RegExp(emailRegex).hasMatch(value)) {
                      return 'Please enter a valid E-Mail address';
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Email or Phone No.',
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  key: ValueKey('password'),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 7) {
                      return 'Password should be atleast 7 characters.';
                    }
                    return null;
                  },
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
        ),
        // const Divider(),
        OutlineButton(
          onPressed: () {},
          borderSide: BorderSide.none,
          shape: loginButtonShape,
          child: Text('Forgot Password?'),
        ),
        Container(
          width: _loginButtonWidth,
          height: 50.0,
          child: RaisedButton(
            onPressed: () => _formKey.currentState.validate(),
            color: orangeColor,
            shape: loginButtonShape,
            child: Text(
              'Login',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
