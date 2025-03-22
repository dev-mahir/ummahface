import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  void _initializeVideo() {
    _videoController = VideoPlayerController.asset('assets/videos/sample.mp4')
      ..initialize().then((_) {
        _chewieController = ChewieController(
          videoPlayerController: _videoController,
          autoPlay: true,
          looping: false,
          showControls: true, // ✅ Shows Play/Pause, Seek, Fullscreen
        );

        setState(() {}); // Update UI when the video is ready
      });
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Play Asset Video")),
      body: Center(
        child:
            _chewieController != null
                ? AspectRatio(
                  aspectRatio: _videoController.value.aspectRatio,
                  child: Chewie(controller: _chewieController!),
                )
                : CircularProgressIndicator(), // Show loader until video is ready
      ),
    );
  }
}
