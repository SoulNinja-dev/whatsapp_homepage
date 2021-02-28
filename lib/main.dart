import 'package:whatsapp_homescreen/screens/Calls.dart';
import 'package:whatsapp_homescreen/screens/Camera.dart';
import 'package:whatsapp_homescreen/screens/Chat.dart';
import 'package:whatsapp_homescreen/screens/Status.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(19, 28, 33, 100),
            title: Text(
              'WhatsApp',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            actions: <Widget>[
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Colors.white,
                  onPressed: null),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(text: 'CHAT'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Camera(),
              Chat(),
              Status(),
              Calls(),
            ],
          ),
        ),
        length: 4,
        initialIndex: 1,
      ),
    );
  }
}
