import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        padding: EdgeInsets.all(25.0),
        height: 120,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black, width: 3.0),
            top: BorderSide(color: Colors.black),
          ),
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
            // BoxShadow(
            //     color: GlobalStyles.backgroundWhite,
            //     spreadRadius: 7.0,
            //     offset: Offset(0, -5),
            //     blurRadius: 10,
            //     blurStyle: BlurStyle.solid),
          ],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "the terminal",
              style: GoogleFonts.nunitoSans().copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 30.0,
                decoration: TextDecoration.underline,
                decorationThickness: 3.0,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.grey,
                    offset:
                        Offset(2, 2), // Adjust horizontal and vertical offset
                  ),
                ],
              ),
            ),
            ProfileTerminalButton(),
          ],
        ),
      ),
      expandedHeight: 150.0,
    );
  }
}
