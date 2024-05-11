import 'package:flutter/material.dart';
import 'package:lyric_reel/pages/home_page/home_page.dart';
import 'package:lyric_reel/pages/messages_page/messages_home_page.dart';
import 'package:lyric_reel/theme/app_colors.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  void _navigateToPage(Widget page) {
    Navigator.pop(context); // Close the drawer if opened
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.blueColor[900],
            ),
            accountName: Text(
              'John Doe',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
              ),
            ),
            accountEmail: Text(
              'john.doe@example.com',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/user_image.jpg'),
            ),
          ),
          _buildListTileWithSplash(
            leadingIcon: Icons.home,
            title: 'Home',
            onTap: () => _navigateToPage(HomePage()),
          ),
          _buildListTileWithSplash(
            leadingIcon: Icons.amp_stories,
            title: 'Stories',
            onTap: () {}, // Pass Widget
          ),
          _buildListTileWithSplash(
            leadingIcon: Icons.message,
            title: 'Messages',
            onTap: () => _navigateToPage(MessagesHomePage()), // Pass Widget
          ),
          _buildListTileWithSplash(
            leadingIcon: Icons.bookmark,
            title: 'Saved',
            onTap: () {},
          ),
          Expanded(
            child: SizedBox(),
          ),
          _buildListTileWithSplash(
            leadingIcon: Icons.settings,
            title: 'Settings',
            onTap: () {},
          ),
          _buildListTileWithSplash(
            leadingIcon: Icons.help,
            title: 'Help',
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }

  Widget _buildListTileWithSplash({
    required IconData leadingIcon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        splashColor: AppColors.black.withAlpha(100),
        onTap: onTap,
        child: ListTile(
          leading: Icon(leadingIcon),
          title: Text(title),
        ),
      ),
    );
  }
}
