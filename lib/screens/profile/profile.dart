import 'package:flutter/material.dart';
import 'package:ummahface/screens/profile/photos.dart';
import 'package:ummahface/screens/profile/reels.dart';
import 'package:ummahface/widgets/post_card.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TabBar(
          tabs: [
            Tab(text: "Posts"),
            Tab(text: "Reels"),
            Tab(text: "Photos"),
            Tab(text: "About"),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: const [PostCard(), PostCard(), PostCard()],
                ),
              ),

              Reels(),
              Photos(),
              Center(child: Text("About Section")),
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
      length: 4, // Updated to match 4 tabs
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mahir Khan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text("278 friends", style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            const Expanded(child: ProfileTab()),
          ],
        ),
      ),
    );
  }
}
