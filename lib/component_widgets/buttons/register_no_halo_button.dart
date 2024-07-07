import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class RegisterNoHaloButton extends StatelessWidget {
  final String action;

  const RegisterNoHaloButton(this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
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
            Navigator.pushNamed(context, '/login');
          },
          child: Text(
            action,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
