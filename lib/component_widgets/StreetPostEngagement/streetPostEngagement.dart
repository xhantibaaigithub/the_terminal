import 'package:flutter/material.dart';

import '../../global_styles/global_styles.dart';

class StreetPostEngagement extends StatelessWidget {
  const StreetPostEngagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0, bottom: 20.0),
      width: double.maxFinite,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 10.0,
            blurRadius: 10,
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
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.icecream_outlined),
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.flag_outlined),
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.add_reaction_outlined),
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.perm_media_outlined),
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.share_outlined),
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.mic_external_on),
          Icon(
              size: 30.0,
              color: GlobalStyles.backgroundWhite,
              Icons.groups)
        ],
      ),
    );
  }
}
