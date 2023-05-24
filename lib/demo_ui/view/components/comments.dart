import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';
import 'package:responsive_ui_demo/core/constants/constant_sizes.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';

class Comments extends StatelessWidget {
  const Comments({
    required this.comments,
    this.isSmall = false,
    super.key,
  });
  final int comments;
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.textsms_outlined,
          color: kLightGray,
          size: isSmall ? 18 : null,
        ),
        const SizedBox(
          width: kSpacingBetweenButtons / 2,
        ),
        Text(
          '$comments',
          style: kSubheadingStyle,
        )
      ],
    );
  }
}
