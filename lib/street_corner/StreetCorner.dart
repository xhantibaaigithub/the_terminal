import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../component_widgets/navbars/estratini_navbar.dart';
import '../global_styles/global_styles.dart';

class StreetCorner extends StatelessWidget {
  final User? loggedInUser;

  const StreetCorner({super.key, this.loggedInUser});

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
                          topRight: Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: [
                        StreetCornerHeader,
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              Top100Button,
                              KhalendaButton,
                              Bottom100Button
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final Top100Button = Container(
  width: double.infinity * 0.9,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/top_100_header.png"),
      // Replace with your background image path
      fit: BoxFit.cover, // Adjust fit as needed
    ),
    color: Colors.blue, // Fallback color in case the image doesn't load
    borderRadius: BorderRadius.all(
      Radius.circular(35.0),
    ),
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
  child: Center(
    child: Text(
      'Top 100'
      '',
      style: TextStyle(
        fontSize: 25.0,
        backgroundColor: Colors.black26,
        color: GlobalStyles.backgroundWhite,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  ),
);

final KhalendaButton = Container(
  width: double.infinity * 0.9,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/khalenda_header.png"),
      fit: BoxFit.cover, // Adjust fit as needed
    ),
    color: Colors.blue,
    borderRadius: BorderRadius.all(
      Radius.circular(35.0),
    ),
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
  child: Center(
    child: Container(
      child: Text(
        'Khalenda',
        style: TextStyle(
          fontSize: 25.0,
          backgroundColor: GlobalStyles.scamtoYellow,
          color: GlobalStyles.scamtoBlue,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ),
);

final Bottom100Button = Container(
  width: double.infinity * 0.9,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/bottom_100_header.png"),
      // Replace with your background image path
      fit: BoxFit.cover, // Adjust fit as needed
    ),
    color: Colors.blue, // Fallback color in case the image doesn't load
    borderRadius: BorderRadius.all(
      Radius.circular(35.0),
    ),
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
  child: Center(
    child: Text(
      'Bottom 100',
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  ),
);

final StreetCornerHeader = Container(
  width: double.infinity * 0.9,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/street_corner_header.png"),
      // Replace with your background image path
      fit: BoxFit.cover, // Adjust fit as needed
    ),
    color: Colors.blue, // Fallback color in case the image doesn't load
    borderRadius: BorderRadius.all(
      Radius.circular(35.0),
    ),
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
  child: Center(
    child: Text(
      'Street Corner',
      style: TextStyle(
        fontSize: 25.0,
        backgroundColor: Colors.white12,
        color: GlobalStyles.backgroundWhite,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  ),
);
