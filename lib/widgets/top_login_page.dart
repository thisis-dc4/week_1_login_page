import 'package:flutter/material.dart';

class TopLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme _textTheme = Theme.of(context).textTheme;

    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: _textTheme.headline3.copyWith(color: Colors.white),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Welcome Back',
                style: _textTheme.headline6.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
