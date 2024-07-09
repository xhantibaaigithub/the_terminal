import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

import '../estratini/streetposts.dart';

class Notifications extends StatelessWidget {
  final User? loggedInUser;

  const Notifications({super.key, required this.loggedInUser});

  @override
  Widget build(BuildContext context) {
    final List<StreetPost> notifications = [
      StreetPost(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      StreetPost(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      StreetPost(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      StreetPost(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      StreetPost(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'xhantibaai has done something you should know about',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now(),
      ),
      StreetPost(
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
            SliverToBoxAdapter(
              child: NotificationsHeader,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final streetPost = notifications[index];
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  child: ClipOval(
                                    child: Image.asset(
                                      streetPost.profilePicture,
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    streetPost.userName,
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
                childCount: notifications.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final NotificationsHeader = Container(
  width: double.infinity,
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
