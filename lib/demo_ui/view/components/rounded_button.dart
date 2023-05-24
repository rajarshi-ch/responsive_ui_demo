import 'package:flutter/material.dart';
import 'package:responsive_ui_demo/core/constants/constant_colors.dart';
import 'package:responsive_ui_demo/core/constants/constant_text_styles.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const RoundedButton({
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            // White text color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryGreen)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            buttonText,
            style: kContentStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
