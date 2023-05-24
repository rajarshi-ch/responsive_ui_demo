import 'package:responsive_ui_demo/demo_ui/data/models/user_model.dart';

class Comment {
  Comment({
    required this.user,
    required this.body,
    required this.likes,
    required this.replies,
    required this.commentDate,
  });

  final User user;
  final String body;
  final int likes;
  final int replies;
  final DateTime commentDate;
}
