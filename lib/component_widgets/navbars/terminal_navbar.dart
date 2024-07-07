import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/terminal_home_button.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/profile_terminal_button.dart';

class TerminalNavbar extends StatelessWidget {
  const TerminalNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: GlobalStyles.backgroundWhite,
      foregroundColor: Colors.black,
      floating: true,
      flexibleSpace: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
        padding: EdgeInsets.all(25.0),
        height: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                spreadRadius: 10.0,
                offset: Offset(0, 7),
                blurRadius: 10,
                blurStyle: BlurStyle.solid),
            BoxShadow(
                color: GlobalStyles.backgroundWhite,
                spreadRadius: 7.0,
                offset: Offset(0, 5),
                blurRadius: 10,
                blurStyle: BlurStyle.inner),
          ],
          borderRadius: BorderRadius.circular(70.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TerminalHomeButton(),
            ProfileTerminalButton(),
          ],
        ),
      ),
      expandedHeight: 150.0,
    );
  }
}
