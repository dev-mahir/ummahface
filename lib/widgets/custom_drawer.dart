import 'package:flutter/material.dart';
import 'package:ummahface/constants/constants.dart';
import 'package:ummahface/screens/profile/profile.dart';

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
            SizedBox(height: 20),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
              ), // Proper padding
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/mahir.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ummahface", style: TextStyle(fontSize: 18)),
                      Text("Visit your profile"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

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

            ListTile(
              leading: Icon(Icons.light_mode_outlined),
              title: Text('Dark mode'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
