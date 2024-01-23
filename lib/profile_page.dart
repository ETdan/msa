import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("profile")),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromRGBO(238, 111, 87, 1.0),
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text("Profile"),
      ),
    );
  }
}
