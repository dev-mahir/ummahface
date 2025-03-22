import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

List<Map<String, dynamic>> chat = [
  {"type": "text", "text": "Hi", "isSent": false, "time": "12 hrs"},
  {"type": "text", "text": "Hello", "isSent": true, "time": "12 hrs"},
  {
    "type": "video",
    "videoUrl": "assets/videos/chat.mp4",
    "thumbnail": "https://example.com/video_thumbnail.jpg",
    "isSent": false,
    "time": "5m",
  },
  {
    "type": "audio",
    "audioUrl": "https://example.com/audio.mp3",
    "duration": "0:30",
    "isSent": true,
    "time": "10m",
  },
  {
    "type": "file",
    "fileName": "document.pdf",
    "fileUrl": "https://example.com/document.pdf",
    "fileSize": "2MB",
    "isSent": false,
    "time": "15m",
  },
  {
    "type": "link",
    "link": "https://flutter.dev",
    "title": "Flutter Official Site",
    "description": "Flutter is an open-source UI toolkit by Google.",
    "thumbnail": "https://example.com/flutter_thumbnail.jpg",
    "isSent": true,
    "time": "20m",
  },
];

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  void _sendMessage({String? text}) {
    if (text != null && text.trim().isNotEmpty) {
      chat.add({
        "type": "text",
        "text": text,
        "isSent": true,
        "time": "Just now",
      });
      setState(() {});
    }
    _messageController.clear();
  }

  void _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      chat.add({
        "type": "image",
        "imageUrl": pickedFile.path,
        "isSent": true,
        "time": "Now",
      });
      setState(() {});
    }
  }

  void _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      chat.add({
        "type": "video",
        "videoUrl": pickedFile.path,
        "isSent": true,
        "time": "Now",
      });
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: chat.length,
              itemBuilder: (context, index) {
                final msg = chat[index];
                return Align(
                  alignment:
                      msg['isSent']
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                  child: _buildChatBubble(msg),
                );
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildChatBubble(Map<String, dynamic> msg) {
    switch (msg['type']) {
      case "text":
        return _buildTextMessage(msg['text'], msg['isSent']);
      case "image":
        return _buildImageMessage(msg['imageUrl']);
      case "video":
        return _buildVideoMessage(msg);
      case "audio":
        return _buildAudioMessage(msg['audioUrl'], msg['duration']);
      case "file":
        return _buildFileMessage(msg);
      case "link":
        return _buildLinkMessage(msg);
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildTextMessage(String text, bool isSent) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSent ? Colors.green : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(color: isSent ? Colors.white : Colors.black),
      ),
    );
  }

  Widget _buildImageMessage(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.file(File(imageUrl), width: 150),
    );
  }

  Widget _buildVideoMessage(Map<String, dynamic> msg) {
    return GestureDetector(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => VideoPlayerScreen(videoUrl: msg['videoUrl']),
            ),
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: Colors.black12,
          width: 150,
          height: 100,
          child: Icon(Icons.play_circle_fill, size: 50, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildAudioMessage(String audioUrl, String duration) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () => AudioPlayer().play(UrlSource(audioUrl)),
        ),
        Text(duration),
      ],
    );
  }

  Widget _buildFileMessage(Map<String, dynamic> msg) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse(msg['fileUrl'])),
      child: Row(
        children: [
          Icon(Icons.insert_drive_file),
          SizedBox(width: 8),
          Text(msg['fileName']),
        ],
      ),
    );
  }

  Widget _buildLinkMessage(Map<String, dynamic> msg) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse(msg['link'])),
      child: Row(
        children: [Icon(Icons.link), SizedBox(width: 8), Text(msg['title'])],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.photo), onPressed: _pickImage),
          IconButton(icon: Icon(Icons.video_library), onPressed: _pickVideo),
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(hintText: "Write something..."),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.green),
            onPressed: () => _sendMessage(text: _messageController.text),
          ),
        ],
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  VideoPlayerScreen({required this.videoUrl});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();
    _videoController =
        widget.videoUrl.startsWith('assets/')
            ? VideoPlayerController.asset(widget.videoUrl)
            : VideoPlayerController.file(File(widget.videoUrl));
    _videoController.initialize().then((_) {
      setState(() {});
      _videoController.play();
    });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: VideoPlayer(_videoController)));
  }
}
