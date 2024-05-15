import 'package:flutter/material.dart';
import 'package:lyric_reel/theme/app_colors.dart';
import 'package:lyric_reel/util/button.dart';

class PostTemplate extends StatelessWidget {

  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    this.userPost,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post (at the very back)
          userPost,
          // user name and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, -1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@$username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.white
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: videoDescription,
                          style: TextStyle(
                            color: AppColors.white
                          )
                        ),
                        TextSpan(
                          text: ' #fyp #flutter',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.white
                            )
                        ),
                      ]
                    )
                  ),
                ],
              ),
            ),
          ),
          // buttons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon: Icons.favorite,
                    number: numberOfLikes,
                  ),
                  MyButton(
                    icon: Icons.chat_bubble_outlined,
                    number: numberOfComments,
                  ),
                  MyButton(
                    icon: Icons.send_rounded,
                    number: numberOfShares,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
