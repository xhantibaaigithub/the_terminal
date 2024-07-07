import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';


class Notifications extends StatelessWidget {
  final User? loggedInUser;

  const Notifications({super.key, required this.loggedInUser});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: loggedInUser != null,
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              EstratiniNavbar(),
              SliverList(
                  delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                      ),
                      color: Colors.amber
                    ),
                    child: Column(
                      children: [
                        Text("data")
                      ],
                    ),
                  )
                ]
              ))
            ],
          )
        )

    );
  }
}
