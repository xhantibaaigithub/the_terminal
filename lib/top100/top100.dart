import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class Top100 extends StatelessWidget {
  final User? loggedInUser;

  const Top100({super.key, required this.loggedInUser});

  @override
  Widget build(BuildContext context) {
    final List<StreetPost> top100StreetPosts = [
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

    top100StreetPosts.sort((a, b) => b.likes.compareTo(a.likes));

    return Scaffold(
      body: Visibility(
        visible: loggedInUser != null,
        child: Container(
          color: GlobalStyles.veryLightBlue,
          child: CustomScrollView(
            slivers: <Widget>[
              EstratiniNavbar(),
              SliverToBoxAdapter(
                child: Top100Button,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= top100StreetPosts.length) {
                      return null;
                    }

                    final post = top100StreetPosts[index];

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
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(post.profilePicture),
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
                                    timeago.format(post.createdAt),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
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
                                            Icons.icecream_rounded),
                                        SizedBox(width: 4),
                                        Text(
                                          '${post.likes}',
                                          style: TextStyle(
                                              color: GlobalStyles.backgroundWhite),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                            size: 30.0,
                                            color: Colors.red,
                                            Icons.flag_outlined),
                                        SizedBox(width: 4),
                                        Text('${post.dislikes}',
                                          style: TextStyle(
                                              color: GlobalStyles.backgroundWhite),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                            size: 30.0,
                                            color: Colors.black,
                                            Icons.groups),
                                        SizedBox(width: 4),
                                        Text('${post.comment}',
                                          style: TextStyle(
                                              color: GlobalStyles.backgroundWhite),),
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
                  childCount: top100StreetPosts.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final Top100Button = InkWell(
  child: Container(
    width: double.infinity * 0.9,
    margin: EdgeInsets.symmetric(vertical: 35.0),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/top_100_header.png"),
        fit: BoxFit.cover,
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
      child: Text(
        'Top 100',
        style: TextStyle(
          fontSize: 25.0,
          backgroundColor: Colors.black26,
          color: GlobalStyles.backgroundWhite,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
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
