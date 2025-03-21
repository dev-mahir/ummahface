import 'package:flutter/material.dart';
import 'package:ummahface/constants/constants.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(0),
        bottomLeft: Radius.circular(0),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(color: Colors.green),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'ummah',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        'face',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  // CircleAvatar(
                  //   radius: 50,
                  //   backgroundImage: AssetImage(
                  //     "images/ummahface.png",
                  //   ), // Profile Image
                  // ),
                ],
              ),
            ),
            ...drawerItems.map((item) {
              return ListTile(
                leading: Icon(item['icon']),
                title: Text(item['title']),
                visualDensity: VisualDensity(vertical: -2),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => item['widget'] ?? Container(),
                    ),
                  );
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
