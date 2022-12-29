import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_checklist/app/utils/constants/color_const.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool backButton;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.backButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      backgroundColor: primaryColor,
      leading: backButton == true
          ? BackButton(
              color: Colors.white,
              onPressed: () => Get.back(),
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
