import 'package:flutter/material.dart';

class GlobalStyles {
  static const backgroundWhite = Color.fromRGBO(245, 245, 245, 1);
  static const scamtoBlue = Color.fromRGBO(24, 188, 156, 1);
  static const scamtoYellow = Color.fromRGBO(255, 193, 8, 1);
  static const niceBlue = Color.fromRGBO(0, 185, 255, 1);
  static const lightBlue = Color.fromRGBO(135, 206, 233, 1);
  static const veryLightBlue = Color.fromRGBO(205, 238, 246, 1);
  static const streetGrey = Color.fromRGBO(47, 79, 79, 1);
  static const lightGrey = Color.fromRGBO(117, 135, 153, 1);

  // // Themes
  // static var darkModeAppTheme = ThemeData.dark().copyWith(
  //   scaffoldBackgroundColor: blackColor,
  //   cardColor: greyColor,
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: drawerColor,
  //     iconTheme: IconThemeData(
  //       color: whiteColor,
  //     ),
  //   ),
  //   drawerTheme: const DrawerThemeData(
  //     backgroundColor: drawerColor,
  //   ),
  //   primaryColor: redColor,
  //   backgroundColor:
  //       drawerColor, // will be used as alternative background color
  // );

  static var normalMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backgroundWhite,
    cardColor: lightBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundWhite,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color.fromRGBO(255, 255, 0, 1),
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: lightBlue,
    ),
    primaryColor: scamtoYellow,
  );
}
