import 'package:flutter/material.dart';
import 'package:product_checklist/app/utils/constants/color_const.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPressed;
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.grey),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: accentColor,
        ),
      ),
    );
  }
}
