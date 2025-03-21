import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/avatar.png'),
                    ),
                    SizedBox(width: 7),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Ummah face"), Text("2d")],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "আপনার Post Card UI তৈরি করার জন্য নিচের Flutter কোড ব্যবহার করুন। এটি একটি সুন্দর পোস্ট কার্ড ডিজাইন করবে, যেখানে ইউজারের নাম, প্রোফাইল ছবি, পোস্টের টেক্সট, পোস্টের ছবি এবং লাইক/কমেন্ট বাটন থাকবে।",
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.thumb_up_alt_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment_outlined),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share_sharp)),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text('2'),
                        Icon(Icons.remove_red_eye_outlined),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(children: [Text('15'), Icon(Icons.comment_outlined)]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
