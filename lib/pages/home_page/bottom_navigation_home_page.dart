import 'package:flutter/material.dart';
class BottomNavigationHomePage extends StatefulWidget {
  const BottomNavigationHomePage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationHomePage> createState() => _BottomNavigationHomePageState();
}

class _BottomNavigationHomePageState extends State<BottomNavigationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}