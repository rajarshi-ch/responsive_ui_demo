import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/const_data.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';
import 'package:responsive_ui_demo/core/constants/constant_sizes.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/comments.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/comments_section.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/custom_back_button.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/hash_tag.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/image_carousal.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/likes.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/more_button.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/notification_button.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/rounded_button.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/user_header.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/write_comment_box.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자유톡'),
        leading: const CustomBackButton(),
        actions: const [NotificationButton()],
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: posts
            .map((post) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kMainScreenPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //TODO: Calculate daysAgo , based on post.postDateTime
                              UserHeader(
                                  user: post.user,
                                  showSecondLine: true,
                                  daysAgo: '1일전'),

                              RoundedButton(onPressed: () {}, buttonText: '팔로우')
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            post.title,
                            style: kHeadingStyle,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            post.body,
                            style: kContentStyle,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: post.hashTags
                                .map((tag) => HashTag(hashTag: tag))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ImageCarousel(imageUrls: post.images),
                    Padding(
                      padding: const EdgeInsets.all(kMainScreenPadding),
                      child: Row(children: const [
                        Likes(
                          likes: 5,
                        ),
                        SizedBox(
                          width: kSpacingBetweenButtons,
                        ),
                        Comments(comments: 5),
                        SizedBox(
                          width: kSpacingBetweenButtons,
                        ),
                        Icon(
                          Icons.bookmark_border_outlined,
                          color: kLightGray,
                        ),
                        SizedBox(
                          width: kSpacingBetweenButtons,
                        ),
                        MoreButton(),
                      ]),
                    ),
                    Divider(
                      height: 10,
                      color: kLightBorderGray.withOpacity(0.6),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kMainScreenPadding,
                      ),
                      child: CommentsSection(),
                    ),
                    Divider(
                      height: 10,
                      color: kLightBorderGray.withOpacity(0.6),
                    ),
                    const WriteCommentBox(),
                  ],
                ))
            .toList(),
      )),
    );
  }
}
