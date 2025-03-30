import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  void openOptionModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.save_alt),
                title: Text('Save post'),
                onTap: () {
                  // Handle edit post action
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {
                  // Handle edit post action
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.copy),
                title: Text('Copy link'),
                onTap: () {
                  // Handle delete post action
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 1,
      margin: EdgeInsets.all(12),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/avatar.png'),
                    ),
                    SizedBox(width: 7),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ummah face",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Text(
                          "2d",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    openOptionModal();
                  },
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Text(
                  "আপনার Post Card UI তৈরি করার জন্য নিচের Flutter কোড ব্যবহার করুন। এটি একটি সুন্দর পোস্ট কার্ড ডিজাইন করবে, যেখানে ইউজারের নাম, প্রোফাইল ছবি, পোস্টের টেক্সট, পোস্টের ছবি এবং লাইক/কমেন্ট বাটন থাকবে।",
                  style: TextStyle(fontSize: 16, color: Colors.black),
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
                      icon: Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.blueGrey,
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment_outlined, size: 22),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share_sharp, size: 22),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          '2',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(width: 2),

                        Icon(Icons.remove_red_eye_outlined, size: 22),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Text(
                          '15',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(width: 2),
                        Icon(Icons.comment_outlined, size: 22),
                      ],
                    ),
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
