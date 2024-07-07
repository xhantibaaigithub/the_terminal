import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class EstratiniSearchButton extends StatelessWidget {
  const EstratiniSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(200)),
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
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/estratini/search');
        },
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              color: GlobalStyles.niceBlue,
              spreadRadius: 5.0,
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 3),
            ),
            BoxShadow(
              color: GlobalStyles.scamtoBlue,
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
          ]),
          child: Icon(
            Icons.search,
            size: 35.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
