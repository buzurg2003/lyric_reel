import 'package:flutter/material.dart';
import 'package:lyric_reel/pages/home_page/home_page.dart';
import 'package:lyric_reel/pages/messages_page/messages_home_page.dart';
import 'package:lyric_reel/pages/messages_page/messages_page.dart';
import 'package:lyric_reel/pages/sign_in/sign_in.dart';
import 'package:lyric_reel/pages/sign_up/sign_up.dart';
import 'package:lyric_reel/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lyric Reel',
      routes: {
        '/sign_in': (context) => const SignIn(),
        '/sign_up': (context) => const SignUp(),
        '/home': (context) => const HomePage(),
        '/messages': (context) => const MessagesPage(),
        '/messages_home': (context) => const MessagesHomePage(),
      },
      initialRoute: '/sign_in',
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
