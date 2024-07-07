import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class TerminalHomeButton extends StatelessWidget {


  const TerminalHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            width: 10.0, style: BorderStyle.solid, color: Colors.black12),
        boxShadow: [
          BoxShadow(
              color: GlobalStyles.veryLightBlue,
              spreadRadius: 15,
              blurRadius: 10,
              blurStyle: BlurStyle.normal,
              offset: Offset(0, 0)),
          BoxShadow(
              color: GlobalStyles.niceBlue,
              spreadRadius: 15,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 0)),
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 10,
              blurRadius: 10,
              blurStyle: BlurStyle.inner,
              offset: Offset(0, 0)),
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/theTerminal_black.png'),
        ),
      ),
      child: InkWell(
        onTap: () => context.go("/"),
      ),
    );
  }
}
