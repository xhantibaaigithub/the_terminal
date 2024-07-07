import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';
import 'package:terminal_mobile_app/user/user_model.dart';

class GreenHaloButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String action;
  final GlobalKey<FormState> formKey;
  final UserModel user;

  GreenHaloButton(this.onPressed, this.user, this.formKey, this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(200), boxShadow: [
        BoxShadow(
            color: GlobalStyles.scamtoBlue,
            spreadRadius: 20.0,
            offset: Offset(0, 5),
            blurRadius: 25,
            blurStyle: BlurStyle.inner),
        BoxShadow(
            color: Colors.blueGrey,
            spreadRadius: 20.0,
            offset: Offset(0, 5),
            blurRadius: 35,
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
        onPressed: onPressed,
        child: Text(
          'action',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
