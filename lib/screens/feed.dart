import 'package:flutter/material.dart';
import 'package:ummahface/widgets/main_layout.dart';
import 'package:ummahface/widgets/post_card.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PostCard(),
            SizedBox(height: 12),
            PostCard(),
            SizedBox(height: 12),
            PostCard(),
          ],
        ),
      ),
    );
  }
}
