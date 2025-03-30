import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "Search", icon: Icon(Icons.search)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text("Home Screen")),
                Center(child: Text("Search Screen")),
                Center(child: Text("Profile Screen")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
