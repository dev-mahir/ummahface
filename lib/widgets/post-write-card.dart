import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ummahface/screens/createPost.dart';

class PostWriteCard extends StatelessWidget {
  const PostWriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('images/avatar.png')),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePost()),
                      );
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Write something!",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.photo_camera_back_outlined),
                SizedBox(width: 5),
                Text("Photo"),
                SizedBox(width: 20),
                Icon(Icons.video_call_outlined),
                SizedBox(width: 5),
                Text("Video"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
