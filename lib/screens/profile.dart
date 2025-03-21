import 'package:flutter/material.dart';
import 'package:ummahface/widgets/main_layout.dart';
import 'package:ummahface/widgets/post-write-card.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(child: Center(child: PostWriteCard()));
  }
}
