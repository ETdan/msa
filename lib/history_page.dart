import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("History")),
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
        child: Text("History"),
      ),
    );
  }
}
