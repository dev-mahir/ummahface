import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  Photos({super.key});

  final List<Map<String, dynamic>> photoAlbums = [
    {
      "title": "Profile pictures",
      "photoCount": 6,
      "image": "assets/images/mahir.jpg",
    },
    {"title": "Upload", "photoCount": 3, "image": "assets/images/mahir.jpg"},
    {
      "title": "Cover photos",
      "photoCount": 12,
      "image": "assets/images/cover.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  'Post Photos',
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(Icons.add_a_photo, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  'Create Album',
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(Icons.add_a_photo_rounded, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: photoAlbums.length,
            itemBuilder: (context, index) {
              final album = photoAlbums[index];
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    album["image"],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(album["title"]),
                subtitle: Text('${album["photoCount"]} photos'),
                // trailing: Icon(
                //   Icons.arrow_forward_ios,
                //   size: 16,
                //   color: Colors.grey,
                // ),
                onTap: () {
                  // অ্যালবামের ডিটেইলস পেজে নেভিগেট করুন
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
