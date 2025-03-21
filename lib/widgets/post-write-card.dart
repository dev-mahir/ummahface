import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ummahface/screens/createPost.dart';

class PostWriteCard extends StatelessWidget {
  const PostWriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage('images/avatar.png')),
          TextField(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreatePost()),
              );
            },

            decoration: InputDecoration(hintText: "Write something!"),
          ),
        ],
      ),
    );
  }
}
