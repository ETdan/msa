import 'package:flutter/material.dart';
import 'package:vid/history_page.dart';
import 'package:vid/home_page.dart';
import 'package:vid/like_page.dart';
import 'package:vid/profile_page.dart';
import 'package:vid/setings_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            title: Text('#Title'),
            automaticallyImplyLeading: false, // Remove the back button
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              // Handle sidebar item tap (e.g., navigate to home)
              // Navigator.pop(context); // Close the sidebar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text('Liked'),
            leading: Icon(Icons.thumb_up),
            onTap: () {
              // Handle sidebar item tap (e.g., navigate to liked)
              // Navigator.pop(context); // Close the sidebar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LikedPage()),
              );
            },
          ),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
            onTap: () {
              // Handle sidebar item tap (e.g., navigate to profile)
              // Navigator.pop(context); // Close the sidebar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            title: Text('History'),
            leading: Icon(Icons.history),
            onTap: () {
              // Handle sidebar item tap (e.g., navigate to history)
              // Navigator.pop(context); // Close the sidebar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => History()),
              );
            },
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              // Handle sidebar item tap (e.g., navigate to settings)
              // Navigator.pop(context); // Close the sidebar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
      ),
    );
  }
}
