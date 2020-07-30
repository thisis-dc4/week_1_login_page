import 'package:flutter/material.dart';
import 'package:week_1_login_page/widgets/form_widget.dart';

class BottomLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FormWidget(),
            OutlineButton(
              onPressed: () {},
              child: Text('Forgot Password'),
              borderSide: BorderSide.none,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Login'),
              color: Colors.orange[700],
            ),
            Text('Continue with social media'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Facebook',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Github',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white),
                  ),
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
