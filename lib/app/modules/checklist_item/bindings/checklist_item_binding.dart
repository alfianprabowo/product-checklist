import 'package:get/get.dart';

import '../controllers/checklist_item_controller.dart';

class ChecklistItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChecklistItemController>(
      () => ChecklistItemController(),
    );
  }
}
