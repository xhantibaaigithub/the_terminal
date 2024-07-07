import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class ScamtoTerminalButton extends StatelessWidget {
  const ScamtoTerminalButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(35.0),
        ),
        boxShadow: [
          BoxShadow(
            color: GlobalStyles.scamtoBlue,
            spreadRadius: 0.0,
            blurRadius: 15,
            blurStyle: BlurStyle.normal,
            offset: Offset(0, 0),
          ),
          BoxShadow(
            color: GlobalStyles.scamtoBlue,
            spreadRadius: 0.0,
            blurRadius: 25,
            blurStyle: BlurStyle.inner,
            offset: Offset(0, 0),
          ),
          BoxShadow(
            color: GlobalStyles.scamtoBlue,
            spreadRadius: 0.0,
            blurRadius: 15.0,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 0),
          ),
          BoxShadow(
            color: Colors.black87,
            spreadRadius: 0.0,
            blurRadius: 15.0,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 5),
          ),
          BoxShadow(
            color: GlobalStyles.backgroundWhite,
            spreadRadius: 0.0,
            blurRadius: 15.0,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Scamto',
            style: TextStyle(
                fontSize: 35.0,
                color: GlobalStyles.backgroundWhite,
                shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 10.0,
                      offset: Offset(0, 5))
                ]),
          ),
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 5.0,
                blurRadius: 5,
                blurStyle: BlurStyle.outer,
                offset: Offset(0, 5),
              ),
              BoxShadow(
                color: GlobalStyles.backgroundWhite,
                spreadRadius: 5.0,
                blurRadius: 25,
                blurStyle: BlurStyle.outer,
                offset: Offset(0, 0),
              ),
              BoxShadow(
                color: GlobalStyles.scamtoBlue,
                spreadRadius: 8.0,
                blurRadius: 15,
                blurStyle: BlurStyle.inner,
                offset: Offset(0, 0),
              ),
            ]),
            child: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/ScamtoLogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
