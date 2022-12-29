import 'package:get/get.dart';

// import '../api_model.dart';

class ApiProvider extends GetConnect {
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Api.fromJson(map);
  //     if (map is List) return map.map((item) => Api.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  // Future<Api?> getApi(int id) async {
  //   final response = await get('api/$id');
  //   return response.body;
  // }

  // Future<Response<Api>> postApi(Api api) async => await post('api', api);
  // Future<Response> deleteApi(int id) async => await delete('api/$id');
}
