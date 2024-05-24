import 'package:flutter/material.dart';
import 'package:lyric_reel/theme/app_colors.dart';
import 'package:lyric_reel/util/post_template.dart';

class BottomNavigationHomePage extends StatefulWidget {
  const BottomNavigationHomePage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationHomePage> createState() => _BottomNavigationHomePageState();
}

class _BottomNavigationHomePageState extends State<BottomNavigationHomePage> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'username',
      videoDescription: 'tiktok ui',
      numberOfLikes: '1.2M',
      numberOfComments: '1850',
      numberOfShares: '125',
      userPost: Container(
        color: AppColors.blueColor,
      ),
    );
  }
}