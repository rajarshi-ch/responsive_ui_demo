import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap ??
            () {
              //In case of a real app, we would pop here
              //Navigator.of(context).pop();
            },
        icon: const Icon(Icons.chevron_left));
  }
}
