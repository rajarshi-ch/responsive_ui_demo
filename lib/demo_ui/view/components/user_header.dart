import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';
import 'package:responsive_ui_demo/demo_ui/data/models/user_model.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({
    required this.user,
    required this.showSecondLine,
    required this.daysAgo,
    super.key,
  });

  final User user;
  final bool showSecondLine;
  final String daysAgo;
  @override
  Widget build(BuildContext context) {
    double pad = 8;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: pad, bottom: pad, right: pad),
          child: CircleAvatar(
            backgroundImage: AssetImage(user.imageUrl),
            backgroundColor: user.userAvatarBgColor,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  user.userName,
                  style: kHeadingStyle,
                ),
                const SizedBox(
                  width: 4,
                ),
                if (user.isVerified) ...const [
                  Icon(
                    Icons.check_circle,
                    color: kPrimaryGreen,
                    size: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                ],
                Text(
                  daysAgo,
                  style: kSubheadingStyle,
                ),
              ],
            ),
            if (showSecondLine) ...[
              const SizedBox(
                height: 3,
              ),
              Row(children: [
                Text(
                  '${user.height} cm',
                  style: kSubheadingStyle,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.circle,
                    size: 2,
                    color: kLightGray,
                  ),
                ),
                Text(
                  '${user.weight} kg',
                  style: kSubheadingStyle,
                ),
              ])
            ],
          ],
        )
      ],
    );
  }
}
