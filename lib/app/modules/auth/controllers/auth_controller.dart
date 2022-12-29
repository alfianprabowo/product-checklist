import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_checklist/app/data/local/cache_manager.dart';

class AuthController extends GetxController with CacheManager {
  final obscureText = true.obs;
  final isLogged = false.obs;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void seePassword() {
    obscureText.value = !obscureText.value;
  }

  void loginSuccess(String? token, String? username) async {
    isLogged.value = true;
    await saveCache(
      token,
      username,
    );
  }
}
