import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/logged_out_logo.dart';
import 'package:terminal_mobile_app/login/login_form.dart';

class Login extends StatelessWidget {

  final bool loggedIn;
  final void Function() signOut;

  const Login({
    super.key,
    required this.loggedIn,
    required this.signOut,
  });

  @override
  Widget build(BuildContext context) {
    return
      Visibility(
          visible: !loggedIn,
          child:  Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 35.0, bottom: 70.0),
              child: LoggedOutLogo(),
            ),
            Expanded(
              child: LoginForm(),
            )
          ],
        ),
      )
      );

  }
}
