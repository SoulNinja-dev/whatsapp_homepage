import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyTabbedPage(),
    ),
  );
}

// ------------------------------------------------------------//
class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key key}) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(text: 'CHAT'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
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
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: ListTile(
                      leading: CircleAvatar(backgroundColor: Colors.grey),
                      title: Text('Aadhithyan'),
                      subtitle: Text('hi bro'),
                      trailing: Text('9:30'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
