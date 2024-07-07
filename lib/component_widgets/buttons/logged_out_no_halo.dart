import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/auth/firebaseAuth.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class LoggedOutNoHaloButton extends StatelessWidget {

  final String action;

  const LoggedOutNoHaloButton(this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(200), boxShadow: [
        BoxShadow(
            color: Colors.blueGrey,
            offset: Offset(0, 5),
            blurRadius: 15,
            blurStyle: BlurStyle.outer),
        BoxShadow(
            color: Colors.black,
            spreadRadius: 10.0,
            offset: Offset(0, 5),
            blurRadius: 15,
            blurStyle: BlurStyle.inner),
      ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: GlobalStyles.veryLightBlue,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
        child: Text(
          action,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
