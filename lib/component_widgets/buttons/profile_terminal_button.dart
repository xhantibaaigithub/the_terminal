import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class ProfileTerminalButton extends StatelessWidget {
  const ProfileTerminalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid,
              width: 3.0,
              strokeAlign: BorderSide.strokeAlignInside),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: GlobalStyles.scamtoBlue,
              spreadRadius: 5.0,
              blurRadius: 10,
              blurStyle: BlurStyle.inner,
              offset: Offset(0, 0),
            ),
            BoxShadow(
              color: Colors.black,
              spreadRadius: 8.0,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 0),
            ),
          ]),
      child: Icon(
        Icons.account_circle,
        color: Colors.black,
        size: 50.0,
      ),
    );
  }
}
