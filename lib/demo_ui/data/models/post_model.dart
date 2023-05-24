import 'package:responsive_ui_demo/demo_ui/data/models/user_model.dart';

class Post {
  Post({
    required this.user,
    required this.postDateTime,
    required this.title,
    required this.body,
    required this.images,
    required this.hashTags,
  });

  final User user;
  final DateTime postDateTime;
  final String title;
  final String body;
  final List<String> images;
  final List<String> hashTags;
}
