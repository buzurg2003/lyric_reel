import 'package:flutter/material.dart';
import 'package:lyric_reel/pages/messages_page/messages_page.dart';

class MessagesHomePage extends StatelessWidget {
  const MessagesHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // Navigate to MessagesPage when Human 1 card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Human 1'),
                subtitle: Text('Messages text preview'),
                trailing: Text('10:30 AM'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to MessagesPage when Human 2 card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Human 2'),
                subtitle: Text('Messages text preview'),
                trailing: Text('11:45 AM'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
