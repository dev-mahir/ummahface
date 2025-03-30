import 'package:flutter/material.dart';
import 'package:ummahface/screens/feed.dart';
import 'package:ummahface/screens/forgot.dart';
import 'package:ummahface/screens/login.dart';
import 'package:ummahface/screens/profile/profile.dart';
import 'package:ummahface/screens/signup.dart';
import 'package:ummahface/screens/update_password.dart';
import 'package:ummahface/theme/theme.dart';
import 'package:ummahface/widgets/custom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // themeMode: ThemeMode.system,
      themeMode: ThemeMode.light,
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
      drawer: CustomDrawer(),
      body: !isLoggedIn ? Feed() : Feed(),
    );
  }
}
