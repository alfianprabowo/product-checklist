import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:product_checklist/app/utils/constants/layout_const.dart';
import 'package:product_checklist/app/utils/constants/text_const.dart';
import 'package:product_checklist/app/utils/widgets/buttons/primary_button.dart';
import 'package:product_checklist/app/utils/widgets/forms/custom_form.dart';
import 'package:product_checklist/app/utils/widgets/texts/label_form_text.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthView'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            TextConst.login,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: LayoutConstants.spaceL),

          // formRegister(),
          const SizedBox(height: LayoutConstants.spaceL),
          Row(
            children: [
              Expanded(
                child: PrimaryButton(
                  text: TextConst.login,
                  // onPressed: controller.login,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  register() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Username
        const LabelFormText(
          text: TextConst.username,
        ),
        const SizedBox(height: LayoutConstants.spaceS),
        CustomForm(
          // controller: controller.emailController,
          hintText: TextConst.usernameHint,
        ),
        const SizedBox(height: LayoutConstants.spaceL),

        // Password
        const LabelFormText(
          text: TextConst.password,
        ),
        const SizedBox(height: LayoutConstants.spaceS),
        CustomForm(
          // controller: controller.passwordController,
          // obscureText: controller.obscureText.value,
          hintText: TextConst.passwordHint,
          // suffixIcon: IconButton(
          //   icon: Icon(
          //     controller.obscureText.value
          //         ? Icons.visibility
          //         : Icons.visibility_off,
          //   ),
          //   onPressed: () {
          //     controller.seePassword();
          //   },
          // ),
        ),
        const SizedBox(height: LayoutConstants.spaceL),
      ],
    );
  }

  login() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Username
        const LabelFormText(
          text: TextConst.username,
        ),
        const SizedBox(height: LayoutConstants.spaceS),
        CustomForm(
          // controller: controller.emailController,
          hintText: TextConst.usernameHint,
        ),
        const SizedBox(height: LayoutConstants.spaceL),

        // Password
        const LabelFormText(
          text: TextConst.password,
        ),
        const SizedBox(height: LayoutConstants.spaceS),
        CustomForm(
          // controller: controller.passwordController,
          // obscureText: controller.obscureText.value,
          hintText: TextConst.passwordHint,
          // suffixIcon: IconButton(
          //   icon: Icon(
          //     controller.obscureText.value
          //         ? Icons.visibility
          //         : Icons.visibility_off,
          //   ),
          //   onPressed: () {
          //     controller.seePassword();
          //   },
          // ),
        ),
        const SizedBox(height: LayoutConstants.spaceL),
      ],
    );
  }
}
