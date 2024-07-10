import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class UpT24 extends StatelessWidget {
  const UpT24({super.key});

  @override
  Widget build(BuildContext context) {
    final List<UpT24Post> upT24Posts = [
      UpT24Post(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrstu',
      ),
      UpT24Post(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrstu',
      ),
      UpT24Post(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrstu',
      ),
      UpT24Post(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrstu',
      ),
      UpT24Post(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrstu',
      ),
      UpT24Post(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrstu',
      ),
    ];

    return Column(
      children: [
        upT24Header,
        Container(
          height: 200.00,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                spreadRadius: 3.0,
                blurRadius: 10.0,
                blurStyle: BlurStyle.solid,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: ListView.builder(
            itemCount: upT24Posts.length,
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: upT24Posts
                    .map(
                      (upT24Post) => Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
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
                        child: Stack(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                upT24Post.imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
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
                                color: Colors.lime
                                    .withOpacity(0.8), // Background color
                              ),
                              child: Text(
                                upT24Post.text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black, // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        )
      ],
    );
  }
}

class UpT24Post {
  final String imagePath;
  final String text;

  UpT24Post({required this.imagePath, required this.text});
}

final upT24Header = Container(
  width: double.maxFinite,
  margin: EdgeInsets.symmetric(vertical: 35.0),
  padding: EdgeInsets.symmetric(vertical: 3.0),
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
        offset: Offset(0, 7),
      ),
    ],
  ),
  child: Text(
    'UpT24',
    style: TextStyle(
        fontSize: 25.0,
        color: GlobalStyles.backgroundWhite,
        shadows: [
          Shadow(color: Colors.black, blurRadius: 5.0, offset: Offset(0, 6.0))
        ]),
    textAlign: TextAlign.center,
  ),
);
