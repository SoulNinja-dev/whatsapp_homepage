import 'package:flutter/material.dart';
import 'dart:math';

class Chat extends StatelessWidget {
  final List<String> names = [
    "SoulNinja",
    "SKP",
    "Rohit",
    "PHP devs",
    "Rize",
    "Felis",
    "Dhruv",
    "Chintu"
  ];
  final List<String> message = [
    "50daysofwindows",
    "mobile developer",
    "vim user",
    "react dev",
    "xd--",
    "xml is better than flutter",
    "Bot dev",
    "I am whitehat jr son"
  ];
  final List<String> time = [
    "11:11",
    "14:34",
    "00:00",
    "05:50",
    "69:96",
    "06:44",
    "42:00",
    "07:23",
    "03:03"
  ];
  final List colors = [
    Colors.blue,
    Colors.green,
    Colors.black,
    Colors.teal,
    Colors.grey,
    Colors.red,
    Colors.yellow,
    Colors.indigoAccent,
    Colors.blueGrey
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(backgroundColor: colors[index]),
          title: Text(
            names[index],
          ),
          subtitle: Text(
            message[index],
          ),
        );
      },
    ));
  }
}
