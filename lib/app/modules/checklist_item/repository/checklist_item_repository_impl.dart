import 'package:product_checklist/app/data/remote/checklist_response.dart';

abstract class ChecklistRepositoryImpl {
  Future<ChecklistResponse> getAllChecklist({Map<String, dynamic>? query});
  Future<ChecklistResponse> createChecklist({Map<String, dynamic>? query});
  Future<ChecklistResponse> deleteChecklist({Map<String, dynamic>? query});
}
