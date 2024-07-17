import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class Bottom100 extends StatelessWidget {
  final User? loggedInUser;

  const Bottom100({super.key, required this.loggedInUser});

  @override
  Widget build(BuildContext context) {
    final List<StreetPost> bottom100StreetPosts = [
      StreetPost(
          imagePath: 'assets/images/theTerminal_black.png',
          userName: 'abcdefghijklmnopqrs',
          profilePicture: 'assets/images/theTerminal_blue.png',
          createdAt: DateTime.now().subtract(Duration(minutes: 15)),
          likes: 1,
          dislikes: 0,
          comment: 18,
          reactions: 15),
      StreetPost(
        imagePath: 'assets/images/Instagram.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now().subtract(Duration(minutes: 30)),
        likes: 187,
        dislikes: 5,
        comment: 253,
        reactions: 300,
      ),
      StreetPost(
        imagePath: 'assets/images/ScamtoLogo.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now().subtract(Duration(minutes: 1)),
        likes: 15,
        dislikes: 52,
        comment: 61,
        reactions: 15,
      ),
      StreetPost(
        imagePath: 'assets/images/Xhanti_Unnamed.png',
        userName: 'abcdefghijklmnopqrst',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now().subtract(Duration(hours: 7)),
        likes: 35,
        dislikes: 10,
        comment: 14,
        reactions: 17,
      ),
      StreetPost(
        imagePath: 'assets/images/wallpaper_process.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now().subtract(Duration(days: 10)),
        likes: 1,
        dislikes: 0,
        comment: 18,
        reactions: 15,
      ),
      StreetPost(
        imagePath: 'assets/images/theTerminal_blue.png',
        userName: 'abcdefghijklmnopqrs',
        profilePicture: 'assets/images/theTerminal_blue.png',
        createdAt: DateTime.now().subtract(Duration(days: 3)),
        likes: 1,
        dislikes: 0,
        comment: 18,
        reactions: 15,
      ),
    ];

    bottom100StreetPosts.sort((a, b) => b.dislikes.compareTo(a.dislikes));

    return Scaffold(
      body: Visibility(
        visible: loggedInUser != null,
        child: Container(
          color: Colors.red,
          child: CustomScrollView(
            slivers: <Widget>[
              EstratiniNavbar(),
              SliverToBoxAdapter(
                child: Bottom100Button,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= bottom100StreetPosts.length) {
                      return null;
                    }

                    final post = bottom100StreetPosts[index];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 8, top: 8, left: 25, bottom: 15.0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: GlobalStyles.backgroundWhite,
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
                                  blurRadius: 7.0,
                                  blurStyle: BlurStyle.outer,
                                  offset: Offset(0, 4.0),
                                ),
                              ],
                            ),
                            child: Text(
                              '#${index + 1}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 15.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        post.profilePicture,
                                      ),
                                      radius: 20,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      post.userName,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    timeago.format(
                                      post.createdAt,
                                    ),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Image.asset(post.imagePath),
                              SizedBox(height: 8),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5.0),
                                color: GlobalStyles.streetGrey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          size: 30.0,
                                          color: GlobalStyles.scamtoYellow,
                                          Icons.icecream_rounded,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '${post.likes}',
                                          style: TextStyle(
                                              color:
                                                  GlobalStyles.backgroundWhite),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          size: 30.0,
                                          color: Colors.red,
                                          Icons.flag_outlined,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '${post.dislikes}',
                                          style: TextStyle(
                                            color: GlobalStyles.backgroundWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                            size: 30.0,
                                            color: Colors.black,
                                            Icons.groups),
                                        SizedBox(width: 4),
                                        Text(
                                          '${post.comment}',
                                          style: TextStyle(
                                            color: GlobalStyles.backgroundWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(
                            height: 1,
                            thickness: 2,
                            color: Colors.black,
                          ),
                        )
                      ],
                    );
                  },
                  childCount: bottom100StreetPosts.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

class StreetPost {
  final String imagePath;
  final String userName;
  final String profilePicture;
  final DateTime createdAt;
  final int likes;
  final int dislikes;
  final int comment;
  final int reactions;

  StreetPost({
    required this.imagePath,
    required this.userName,
    required this.profilePicture,
    required this.createdAt,
    required this.likes,
    required this.dislikes,
    required this.comment,
    required this.reactions,
  });
}
