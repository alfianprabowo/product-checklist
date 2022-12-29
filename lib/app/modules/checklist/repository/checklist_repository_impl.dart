import 'package:product_checklist/app/data/remote/checklist_response.dart';

abstract class ChecklistRepositoryImpl {
  Future<ChecklistResponse> getGifts({Map<String, dynamic>? query});
}
