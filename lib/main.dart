import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
// row for chat calls status
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: FlatButton(
                    child: Text(
                      'CHAT',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    onPressed: null,
                    color: Colors.teal.shade800,
                  ),
                ),
              ],
            ),

// chat rows
          ],
        ),
      ),
    );
  }
}
