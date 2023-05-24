import 'package:flutter/material.dart';

class User {
  User({
    required this.userName,
    required this.height,
    required this.weight,
    required this.imageUrl,
    required this.isVerified,
    required this.userAvatarBgColor,
  });

  final String userName;
  final int height;
  final int weight;
  final String imageUrl;
  final bool isVerified;
  final Color userAvatarBgColor;
}
