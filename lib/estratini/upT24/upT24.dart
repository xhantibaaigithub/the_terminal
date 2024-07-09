import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/global_styles/global_styles.dart';

class UpT24 extends StatelessWidget {
  const UpT24({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MediaObject> upT24Posts = [
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrs',
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrs',
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrs',
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrs',
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrs',
      ),
      MediaObject(
        imagePath: 'assets/images/theTerminal_black.png',
        text: 'abcdefghijklmnopqrs',
      ),
    ];

    return Column(
      children: [
        upT24Header,
        Container(
          // padding: EdgeInsets.symmetric(vertical: 10),
          height: 235.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.white10,
                  spreadRadius: 3.0,
                  blurRadius: 10.0,
                  blurStyle: BlurStyle.solid,
                  offset: Offset(0, 0)),
            ],
          ),
          child: ListView.builder(
            itemCount: upT24Posts.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: upT24Posts
                    .map(
                      (mediaObject) => Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 15.0,
                        ),
                        height: 180.0,
                        width: 180.0,
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
                                mediaObject.imagePath,
                                width: 180.0,
                                height: 180.0,
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
                                color: Colors.lime
                                    .withOpacity(0.8), // Background color
                              ),
                              child: Text(
                                mediaObject.text,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
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

class MediaObject {
  final String imagePath;
  final String text;

  MediaObject({required this.imagePath, required this.text});
}

class UpT24Header extends StatelessWidget {
  const UpT24Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

final upT24Header = Container(
  width: double.infinity,
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
