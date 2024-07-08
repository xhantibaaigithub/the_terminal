import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

import '../estratini/streetposts.dart';

class Notifications extends StatelessWidget {
  final User? loggedInUser;

  const Notifications({super.key, required this.loggedInUser});

  @override
  Widget build(BuildContext context) {
    final List<MediaObject> notifications = [
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
    ];

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
                        NotificationsHeader,
                        SizedBox(
                          height: double.maxFinite,
                          child: ListView.builder(
                            itemCount: notifications.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              final mediaObject = notifications[index];
                              return Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 8.0,
                                      blurRadius: 15,
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset(0, 0),
                                    ),
                                    BoxShadow(
                                      color:
                                          const Color.fromARGB(255, 99, 99, 99),
                                      spreadRadius: 5.0,
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.inner,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  title: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10.0),
                                              child: ClipOval(
                                                child: Image.asset(
                                                  mediaObject.profilePicture,
                                                  width: 50.0,
                                                  height: 50.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                mediaObject.userName,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
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

final NotificationsHeader = Container(
  width: double.maxFinite * 0.9,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  decoration: BoxDecoration(
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
  child: Text(
    'Notifications',
    style: TextStyle(
      fontSize: 25.0,
      color: GlobalStyles.backgroundWhite,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  ),
);
