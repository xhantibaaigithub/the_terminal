import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class EstratiniTerminalButton extends StatelessWidget {
  final bool loggedIn;

  EstratiniTerminalButton({super.key, required this.loggedIn});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 8.0,
              blurRadius: 15,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 0),
            ),
            BoxShadow(
              color: GlobalStyles.streetGrey,
              spreadRadius: 5.0,
              blurRadius: 2,
              blurStyle: BlurStyle.inner,
              offset: Offset(0, 0),
            ),
            BoxShadow(
              color: Colors.black,
              spreadRadius: 5.0,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 7),
            ),
          ]),
      child: InkWell(
        onTap: () {
          loggedIn ? context.go('/estratini') : context.go('/login');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Estratini',
              style: TextStyle(
                  fontSize: 35.0,
                  color: GlobalStyles.backgroundWhite,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                        offset: Offset(0, 7.0))
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: GlobalStyles.niceBlue,
                    spreadRadius: 5.0,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: GlobalStyles.scamtoYellow,
                    spreadRadius: 8.0,
                    blurRadius: 15,
                    blurStyle: BlurStyle.inner,
                    offset: Offset(0, 0),
                  ),
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 10.0,
                    blurRadius: 15,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Icon(
                Icons.traffic,
                size: 50.0,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
