import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';
import 'package:terminal_mobile_app/estratini/streetposts.dart';
import 'package:terminal_mobile_app/estratini/upT24/upt24.dart';

class Estratini extends StatelessWidget {
  final User? loggedInUser;

  const Estratini({super.key, required this.loggedInUser});

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
                        topRight: Radius.circular(20.0),
                      ),
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
                    child: Column(
                      children: [
                        ListTile(
                          title: UpT24(),
                        ),
                        ListTile(
                          title: StreetPosts(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
