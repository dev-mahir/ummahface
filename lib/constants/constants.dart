import 'package:flutter/material.dart';
import 'package:ummahface/screens/feed.dart';
import 'package:ummahface/screens/message.dart';
import 'package:ummahface/screens/saved_post.dart';
import 'package:ummahface/screens/video.dart';

// app bar menu items

final List<Map<String, dynamic>> appBarItems = [
  {'icon': Icon(Icons.home_outlined), 'widget': Feed()},
  {'icon': Icon(Icons.person_add_alt_1_outlined), 'widget': Feed()},
  {'icon': Icon(Icons.chat_bubble_outline), 'widget': Feed()},
  {'icon': Icon(Icons.videocam_outlined), 'widget': Feed()},
  {'icon': Icon(Icons.search), 'widget': Feed()},
  {'icon': Icon(Icons.notifications_none), 'widget': Feed()},
];

// drawer list items
final List<Map<String, dynamic>> drawerItems = [
  {'icon': Icons.home, 'title': 'News Feed', 'widget': Feed()},
  {
    'icon': Icons.video_camera_back_outlined,
    'title': 'Video',
    'widget': Video(),
  },
  {'icon': Icons.home, 'title': 'Saved Posts', 'widget': SavedPost()},
  {'icon': Icons.chat_bubble_outline, 'title': 'Messages', 'widget': Message()},
  // {
  //   'icon': Icons.people_outline,
  //   'title': 'Find freinds',
  //   'route': '/find-friends',
  // },
  // {'icon': Icons.people_outline, 'title': 'Groups', 'route': '/groups'},
  // {'icon': Icons.flag_outlined, 'title': 'Pages', 'route': '/pages'},
  // {'icon': Icons.calendar_today_sharp, 'title': 'Events', 'route': '/'},
  // {'icon': Icons.shopping_cart_outlined, 'title': 'Shop', 'route': '/shop'},
  // {'icon': Icons.shopping_bag_outlined, 'title': 'Job', 'route': '/job'},
  // {'icon': Icons.monetization_on_outlined, 'title': 'Monetize', 'route': '/'},
  // {'icon': Icons.settings, 'title': 'Setting', 'route': '/setting'},
  // {'icon': Icons.logout, 'title': 'Logout', 'route': '/logout'},
];
