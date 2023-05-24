import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';
import 'package:responsive_ui_demo/core/constants/constant_sizes.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';

class WriteCommentBox extends StatelessWidget {
  const WriteCommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kMainScreenPadding,
        vertical: kMainScreenPadding * 0.5,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.image_outlined,
            color: kLightGray,
            size: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            '댓글을 남겨주세요.',
            style: kSubheadingStyle.copyWith(
                fontWeight: FontWeight.w400, fontSize: kContentSize),
          ),
          const Spacer(),
          Text(
            '등록',
            style: kSubheadingStyle.copyWith(fontSize: kContentSize),
          ),
        ],
      ),
    );
  }
}
