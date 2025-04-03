import 'package:flutter/material.dart';

class Reels extends StatelessWidget {
  Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.photo_camera_back_outlined,
                  size: 100,
                  color: Colors.grey[500],
                ),
                Text("No reels yet", style: TextStyle(color: Colors.black)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: Text(
                    'Create Reel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
