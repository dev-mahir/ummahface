import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final dynamic imagePath;
  final double size;
  final double borderRadius;

  const CustomCircleAvatar({
    Key? key,
    required this.size,
    required this.borderRadius,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        imagePath,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
