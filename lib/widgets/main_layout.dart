import 'package:flutter/material.dart';
import 'package:ummahface/constants/constants.dart';
import 'package:ummahface/widgets/custom_drawer.dart';



class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              appBarItems.map((item) {
                return IconButton(
                  icon: item['icon'],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => item['widget'],
                      ),
                    );
                  },
                );
              }).toList(),
        ),
        actions: [
          Builder(
            builder:
                (context) => GestureDetector(
                  onTap: () {
                    Scaffold.of(
                      context,
                    ).openEndDrawer(); // ✅ Avatar Click -> Open Drawer
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/avatar.png'),
                    ),
                  ),
                ),
          ),
        ],
      ),
      endDrawer: CustomDrawer(),
      body: child,
    );
  }
}
