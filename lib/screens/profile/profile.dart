import 'package:flutter/material.dart';
import 'package:ummahface/widgets/post_card.dart';

// Dummy Post Write Card
class PostWriteCard extends StatelessWidget {
  const PostWriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/mahir.jpg'),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What's on your mind?",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Profile Tabs
class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TabBar(
          tabs: [
            Tab(text: "Home", icon: Icon(Icons.home)),
            Tab(text: "Search", icon: Icon(Icons.search)),
            Tab(text: "Profile", icon: Icon(Icons.person)),
          ],
        ),
        SizedBox(
          height: 300, // Adjust height for tab content
          child: TabBarView(
            children: [
              Center(child: Text("Home Screen")),
              Center(child: Text("Search Screen")),
              Center(child: Text("Profile Screen")),
            ],
          ),
        ),
      ],
    );
  }
}

// Profile Page
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      'assets/images/cover.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                      width: double.infinity,
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/mahir.jpg',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: const Icon(Icons.camera_alt_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ProfileTab(), // Tabs
              const PostWriteCard(),
              const PostCard(),
              const PostCard(),
              const PostCard(),
              const PostCard(),
            ],
          ),
        ),
      ),
    );
  }
}
