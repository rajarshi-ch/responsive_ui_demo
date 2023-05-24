import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    // in a real world app, this would be wrapped with a BlocBuilder/ Consumer
    // To show how many notifications are there
    return IconButton(
      onPressed: () {
        //In case of a real app, we would open the notifications page here
        //Navigator.of(context).push( NotificationsPage.route );
      },
      icon: const Icon(
        Icons.notifications_outlined,
        color: kLightGray,
      ),
    );
  }
}
