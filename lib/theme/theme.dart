import 'package:flutter/material.dart';
import 'package:lyric_reel/theme/app_colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    foregroundColor: AppColors.black,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.purple
  ),
  useMaterial3: true,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    foregroundColor: AppColors.white
  ),
  useMaterial3: true,
);
