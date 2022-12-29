import 'package:get/get.dart';

abstract class ChecklistProviderImpl {
  Future<Response<dynamic>> getAllChecklist({
    required String path,
    Map<String, dynamic> body,
  });

  Future<Response<dynamic>> createChecklist({
    required String path,
    Map<String, dynamic> body,
  });
  Future<Response<dynamic>> deleteChecklist({
    required String path,
    Map<String, dynamic> body,
  });
}
