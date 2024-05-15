import 'package:flutter/material.dart';
import 'package:lyric_reel/theme/app_colors.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;

  const MyButton({
    this.icon,
    required this.number
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: AppColors.white,
            size: 30,
          ),
          SizedBox(height: 10,),
          Text(
            number,
            style: TextStyle(
              color: AppColors.white
            ),
          )
        ],
      ),
    );
  }
}
