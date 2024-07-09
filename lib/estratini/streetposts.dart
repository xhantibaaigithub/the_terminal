import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class StreetPosts extends StatelessWidget {
  const StreetPosts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StreetPost> streetposts = [
      StreetPost(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      StreetPost(
        imagePath: 'assets/images/Instagram.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      StreetPost(
        imagePath: 'assets/images/ScamtoLogo.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      StreetPost(
        imagePath: 'assets/images/Xhanti_Unnamed.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      StreetPost(
        imagePath: 'assets/images/wallpaper_process.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      StreetPost(
        imagePath: 'assets/images/theTerminal_blue.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
    ];

    Widget StreetPostTopBar(StreetPost streetPost) {
      return Container(
        margin: EdgeInsets.only(bottom: 15.0),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                streetPost.profilePicture,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 180.0,
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 5.0,
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                  right: Radius.circular(20.0),
                ),
                color: GlobalStyles.streetGrey
                    .withOpacity(0.8), // Background color
              ),
              child: Text(
                streetPost.userName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ],
        ),
      );
    }

    ;

    Widget StreetPostMediaContainer(StreetPost streetPost) {
      return Container(
        width: double.infinity,
        child: Image.asset(
          streetPost.imagePath,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget StreetPostContainer(StreetPost streetPost) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        // height: 500.0,
        width: double.infinity,
        child: ListTile(
          title: Column(
            children: [
              StreetPostTopBar(streetPost),
              StreetPostMediaContainer(streetPost)
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: streetposts
              .map(
                (streetPost) => StreetPostContainer(streetPost),
              )
              .toList(),
        )
      ],
    );
  }
}

final StreetPostsHeader = Container(
  width: double.infinity,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  decoration: BoxDecoration(
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
    'Street Posts',
    style: TextStyle(
        fontSize: 25.0,
        color: GlobalStyles.backgroundWhite,
        shadows: [
          Shadow(color: Colors.black, blurRadius: 5.0, offset: Offset(0, 7.0))
        ]),
    textAlign: TextAlign.center,
  ),
);

class StreetPost {
  final String imagePath;
  final String userName;
  final String profilePicture;
  final DateTime createdAt;

  StreetPost(
      {required this.imagePath,
      required this.userName,
      required this.profilePicture,
      required this.createdAt});
}
