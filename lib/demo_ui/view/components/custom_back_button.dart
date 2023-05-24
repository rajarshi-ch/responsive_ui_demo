import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap ??
            () {
              //In case of a real app, we would pop here
              //Navigator.of(context).pop();
            },
        child: const Icon(
          Icons.chevron_left_rounded,
          size: 50,
          color: kPrimaryBlack,
          weight: 1,
        ));
  }
}
