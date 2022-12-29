import 'package:flutter/material.dart';
import 'package:product_checklist/app/utils/constants/color_const.dart';

class LabelFormText extends StatelessWidget {
  final String? text;

  const LabelFormText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        color: primaryColor,
        fontSize: 14,
      ),
    );
  }
}
