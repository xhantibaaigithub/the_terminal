import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/component_widgets/navbars/estratini_navbar.dart';

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

    return Visibility(
      visible: loggedInUser != null,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final post = top100StreetPosts[index];
                return Material(
                  child: ListTile(
                    leading: Image.asset(post.profilePicture),
                    title: Text(post.userName),
                    subtitle: Text('${post.createdAt}'),
                    trailing: Image.asset(post.imagePath),
                  ),
                );
              },
              childCount: top100StreetPosts.length,
            ),
          ),
        ],
      ),
    );
  }
}

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
