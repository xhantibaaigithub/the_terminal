import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/estratini/estratini_terminal_button.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/scamto_terminal_button.dart';
import 'package:terminal_mobile_app/component_widgets/navbars/terminal_navbar.dart';

class Terminal extends StatelessWidget {
  final User? loggedInUser;

  Terminal({
    super.key,
    required this.loggedInUser,
  });

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = loggedInUser != null;
    return Visibility(
        visible: isLoggedIn,
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              TerminalNavbar(),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    ListTile(
                      title: EstratiniTerminalButton(),
                    ),
                    ListTile(
                      title: ScamtoTerminalButton(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
