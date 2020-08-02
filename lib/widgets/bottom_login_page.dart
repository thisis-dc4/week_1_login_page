import 'package:flutter/material.dart';

import 'package:week_1_login_page/global.dart';
import 'package:week_1_login_page/widgets/form_widget.dart';

class BottomLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _buttonWidth = _width * 0.35;

    return Expanded(
      flex: 5,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FormWidget(),
            Text('Continue with social media'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: _buttonWidth,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: loginButtonShape,
                    child: Text(
                      'Facebook',
                      style: const TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: _buttonWidth,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: loginButtonShape,
                    child: Text(
                      'Github',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
