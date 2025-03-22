import 'package:flutter/material.dart';
import 'package:ummahface/screens/chat.dart';
import 'package:ummahface/widgets/main_layout.dart';
import 'package:ummahface/widgets/message_card.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Messages",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xFF333333),
                ),
              ),
              Divider(thickness: 1, color: Colors.grey),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                child: MessageCard(),
              ),
              SizedBox(height: 15),
              MessageCard(),
              SizedBox(height: 15),
              MessageCard(),
              SizedBox(height: 15),
              MessageCard(),
              SizedBox(height: 15),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
              SizedBox(height: 12),
              MessageCard(),
            ],
          ),
        ),
      ),
    );
  }
}
