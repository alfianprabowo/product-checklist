import 'package:get/get.dart';
import 'package:product_checklist/app/data/remote/checklist_response.dart';
import 'package:product_checklist/app/modules/checklist/providers/checklist_provider_impl.dart';
import 'package:product_checklist/app/utils/services/index.dart';

class ChecklistProvider extends BaseProvider implements ChecklistProviderImpl {
  @override
  Future<Response> createChecklist(
      {required String path, Map<String, dynamic>? body}) {
    // TODO: implement createChecklist
    throw UnimplementedError();
  }

  @override
  Future<Response> deleteChecklist(
      {required String path, Map<String, dynamic>? body}) {
    // TODO: implement deleteChecklist
    throw UnimplementedError();
  }

  @override
  Future<Response> getAllChecklist(
      {required String path, Map<String, dynamic>? body}) {
    // TODO: implement getAllChecklist
    throw UnimplementedError();
  }
}
