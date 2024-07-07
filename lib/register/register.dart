import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/register/register_form.dart';
import 'package:terminal_mobile_app/component_widgets/register_logo.dart';

class Register extends StatelessWidget {
  final bool loggedIn;
  final void Function() signOut;

  const Register({
    super.key,
    required this.loggedIn,
    required this.signOut,
  });

  @override
  Widget build(BuildContext context) {
    return
      Visibility(
        visible: !loggedIn,
        child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 35.0, bottom: 50.0),
              child: RegisterLogo(),
            ),
            Expanded(
              child: RegisterForm(),
            ),
          ],
        ),
      ),
      );

  }
}
