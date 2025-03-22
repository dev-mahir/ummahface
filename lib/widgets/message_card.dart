import 'package:flutter/material.dart';
import 'package:ummahface/widgets/CustomCircleAvatar.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({Key? key}) : super(key: key);

  @override
  _MessageCardState createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleAvatar(
          size: 60,
          borderRadius: 50,
          imagePath: 'images/avatar.png',
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'mahir12',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(width: 10),
                Text(
                  '12 hrs',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ],
            ),
            Text('Me: hi'),
          ],
        ),
      ],
    );
  }
}
