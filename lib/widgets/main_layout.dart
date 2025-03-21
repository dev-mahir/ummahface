import 'package:flutter/material.dart';
import 'package:ummahface/constants/constants.dart';
import 'package:ummahface/screens/feed.dart';
import 'package:ummahface/screens/profile.dart';
import 'package:ummahface/widgets/custom_drawer.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...appBarItems
                .map(
                  (item) => IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['widget']),
                      );
                    },
                    icon: item['icon'],
                  ),
                )
                .toList(),

            
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
      body: child,
    );
  }
}
