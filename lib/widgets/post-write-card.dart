import 'package:flutter/material.dart';
import 'package:ummahface/screens/createPost.dart';

class PostWriteCard extends StatelessWidget {
  const PostWriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/avatar.png',
                  ), // Path ঠিক করুন
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePost()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Write something!",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildPostOption(Icons.photo_camera_back_outlined, "Photo"),
                _buildPostOption(Icons.video_call_outlined, "Video"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPostOption(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 5),
        Text(text, style: TextStyle(color: Colors.black87)),
      ],
    );
  }
}
