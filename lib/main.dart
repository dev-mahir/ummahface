import 'package:flutter/material.dart';
import 'package:ummahface/screens/feed.dart';
import 'package:ummahface/screens/forgot.dart';
import 'package:ummahface/screens/login.dart';
import 'package:ummahface/screens/profile.dart';
import 'package:ummahface/screens/signup.dart';
import 'package:ummahface/screens/update_password.dart';
import 'package:ummahface/widgets/custom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      debugShowCheckedModeBanner: false, // Hides debug banner
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoggedIn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person_add_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('images/avatar.png'),
            ),
          ),
        ],
      ),

      drawer: CustomDrawer(),
      body: !isLoggedIn ? Feed() : Feed(),
    );
  }
}
