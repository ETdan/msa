import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Search")),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromRGBO(238, 111, 87, 1.0),
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text("Search"),
      ),
    );
  }
}
