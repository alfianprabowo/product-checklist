import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/checklist_controller.dart';

class ChecklistView extends GetView<ChecklistController> {
  const ChecklistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChecklistView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChecklistView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  register() {}

  loginn() {}
}
