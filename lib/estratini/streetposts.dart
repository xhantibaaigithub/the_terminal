import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class StreetPosts extends StatelessWidget {
  const StreetPosts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MediaObject> streetposts = [
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.timestamp(),
      ),
    ];

    return Column(
      children: [
        streetpostsHeader,
        SizedBox(
          height: double.maxFinite,
          width: double.infinity,
          child: ListView.builder(
              itemCount: streetposts.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: streetposts
                      .map(
                        (mediaObject) => Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 15.0,
                          ),
                          // height: 500.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
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
                                color: const Color.fromARGB(255, 99, 99, 99),
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
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ListTile(
                              title: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        mediaObject.profilePicture,
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
                                            .withOpacity(
                                                0.8), // Background color
                                      ),
                                      child: Text(
                                        mediaObject.userName,
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
                              ),
                            ],
                          )),
                        ),
                      )
                      .toList(),
                );
              }),
        )
      ],
    );
  }
}

class PostTopBar extends StatelessWidget {
  const PostTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

final streetpostsHeader = Container(
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

class MediaObject {
  final String imagePath;
  final String userName;
  final String profilePicture;
  final DateTime createdAt;

  MediaObject(
      {required this.imagePath,
      required this.userName,
      required this.profilePicture,
      required this.createdAt});
}
