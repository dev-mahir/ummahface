import 'package:flutter/material.dart';
import 'package:ummahface/widgets/main_layout.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(child: Text("Message"));
  }
}
