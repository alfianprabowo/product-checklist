import 'package:get/get.dart';

import '../../../data/remote/checklist_items_response.dart';

abstract class ChecklistItemProviderImpl {
  Future<Response<ChecklistItems>> getAllChecklistItems({
    required String path,
  });
}
