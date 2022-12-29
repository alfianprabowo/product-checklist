import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/checklist_item_controller.dart';

class ChecklistItemView extends GetView<ChecklistItemController> {
  const ChecklistItemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChecklistItemView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChecklistItemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
