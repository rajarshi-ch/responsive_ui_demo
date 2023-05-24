import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/const_data.dart';
import 'package:responsive_ui_demo/core/constants/constant_sizes.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';
import 'package:responsive_ui_demo/demo_ui/data/models/comment_model.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/comments.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/likes.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/more_button.dart';
import 'package:responsive_ui_demo/demo_ui/view/components/user_header.dart';

class CommentsSection extends StatelessWidget {
  CommentsSection({super.key});
  final Comment mainComment = Comment(
    user: kUsers[0],
    body: '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 '
        '우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 '
        '아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 '
        '괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 '
        '꼭 봐주세용~!',
    likes: 5,
    replies: 5,
    commentDate: DateTime.now(),
  );

  final List<Comment> replies = [
    Comment(
      user: kUsers[1],
      body: '오 대박! 라이브 리뷰 오늘 올라온대요? '
          '챙겨봐야겠다',
      likes: 5,
      replies: 0,
      commentDate: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserHeader(
              user: mainComment.user,
              showSecondLine: false,
              daysAgo: '1일전',
            ),
            const MoreButton(),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainComment.body,
                    style: kContentStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Likes(
                        likes: mainComment.likes,
                        isSmall: true,
                      ),
                      const SizedBox(
                        width: kSpacingBetweenButtons * 0.9,
                      ),
                      Comments(
                        comments: mainComment.replies,
                        isSmall: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ...replies
                      .map((reply) => Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UserHeader(
                                      user: reply.user,
                                      showSecondLine: false,
                                      daysAgo: '1일전'),
                                  const MoreButton(),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          reply.body,
                                          style: kContentStyle,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Likes(
                                              likes: reply.likes,
                                              isSmall: true,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
                      .toList(),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
