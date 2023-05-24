import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';

class HashTag extends StatelessWidget {
  const HashTag({
    required this.hashTag,
    super.key,
  });
  final String hashTag;
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        hashTag,
        style: kHashTagStyle,
      ),
      backgroundColor: kLightBackgroundGray,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: kLightBorderGray,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
