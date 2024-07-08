import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/estratini/estratini_home_button.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/estratini/estratini_notifications_button.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/estratini/estratini_search_button.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/estratini/estratini_streetcorner_button.dart';
import 'package:terminal_mobile_app/component_widgets/buttons/terminal_home_button.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class EstratiniNavbar extends StatelessWidget {
  const EstratiniNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: GlobalStyles.backgroundWhite,
      foregroundColor: Colors.black,
      floating: true,
      flexibleSpace: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
        padding: EdgeInsets.all(25.0),
        height: 100,
        decoration: BoxDecoration(
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
          borderRadius: BorderRadius.circular(70.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TerminalHomeButton(),
            EstratiniHomeButton(),
            EstratiniNotificationsButton(),
            EstratiniStreetCornerButton(),
            EstratiniSearchButton(),
          ],
        ),
      ),
      expandedHeight: 120.0,
    );
  }
}
