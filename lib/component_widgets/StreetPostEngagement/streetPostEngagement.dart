import 'package:flutter/material.dart';

class EstratiniPostEngagement extends StatelessWidget {
  const EstratiniPostEngagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 3.0,
            blurRadius: 3.0,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 0),
          )
        ],
      ),
    );
  }
}
