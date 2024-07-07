import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class RegisterLogo extends StatelessWidget {
  const RegisterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            width: 10.0, style: BorderStyle.solid, color: Colors.black12),
        boxShadow: [
          BoxShadow(
              color: GlobalStyles.veryLightBlue,
              spreadRadius: 25,
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              offset: Offset(0, 10)),
          BoxShadow(
              color: GlobalStyles.niceBlue,
              spreadRadius: 19,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 10)),
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 10,
              blurRadius: 10,
              blurStyle: BlurStyle.inner,
              offset: Offset(0, 5)),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/theTerminal_black.png'),
        ),
      ),
    );
  }
}
